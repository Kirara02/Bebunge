import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/harga_pasar/bloc/harga_pasar_bloc.dart';
import 'package:bebunge/src/network/model/harga_pasar/harga_pasar.dart';
import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/common/date_picker.dart';
import '../../../widgets/common/ux_spacer.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../widget/harga_pasar_card.dart';

class HargaPasar extends StatefulWidget {
  const HargaPasar({super.key});

  @override
  State<HargaPasar> createState() => _HargaPasarState();
}

class _HargaPasarState extends State<HargaPasar> {
  TextEditingController searchController = TextEditingController();
  late String date;
  late List<HargaPasarMod> original;
  ValueNotifier<List<HargaPasarMod>> dataBox = ValueNotifier([]);
  bool _loading = false;

  @override
  void initState() {
    date = DateFormat("yyyy-MM-dd").format(DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HargaPasarBloc()..add(HargaPasarEvent.started(date: date)),
      child: Builder(builder: (context) {
        return BlocListener<HargaPasarBloc, HargaPasarState>(
          listener: (context, state) {
            state.maybeWhen(
              initial: () {
                setState(() {
                  _loading = true;
                });
              },
              loading: () {
                setState(() {
                  _loading = true;
                });
              },
              loaded: (data) {
                setState(() {
                  _loading = false;
                  original = data;
                  dataBox.value = data;
                });
              },
              orElse: () {
                setState(() {
                  _loading = true;
                  dataBox.value = [];
                });
              },
            );
          },
          child: Scaffold(
              appBar: AppBar(
                title: Text(
                  'Harga Komoditas',
                  style: TextStyle(
                      fontSize: UXConstants.kFontSizeXL,
                      fontWeight: FontWeight.w600),
                ),
                centerTitle: true,
                bottom: PreferredSize(
                    child: Container(
                        height: 40,
                        padding: EdgeInsetsDirectional.symmetric(
                            horizontal: UXConstants.kPaddingXL),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: UXInputCustom(
                                controller: searchController,
                                hintText: 'Cari produk',
                                textInputAction: TextInputAction.search,
                                onFieldSubmitted: (p0) {
                                  _filterSearchResults(p0);
                                  hideKeyboard(context);
                                },
                                onChanged: (value) {},
                              ),
                            ),
                            UXSpacer(width: 10),
                            InkWell(
                              onTap: () {
                                hargaPasarBottomSheet().then((value) {
                                  if (value != null) {
                                    setState(() {
                                      date = value;
                                      context.read<HargaPasarBloc>()
                                        ..add(HargaPasarEvent.started(
                                            date: date));
                                      searchController.clear();
                                    });
                                  }
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(10),
                                    border:
                                        Border.all(color: UXColors.grey_60)),
                                child: Icon(Icons.tune),
                              ),
                            ),
                          ],
                        )),
                    preferredSize: Size.fromHeight(40)),
              ),
              body: RefreshIndicator(
                  onRefresh: () => Future.sync(() =>
                      BlocProvider.of<HargaPasarBloc>(context)
                        ..add(HargaPasarEvent.started(date: date))),
                  child: ValueListenableBuilder<List<HargaPasarMod>>(
                    valueListenable: dataBox,
                    builder: (context, value, child) {
                      return _loading
                          ? UXLoading()
                          : Container(
                              padding: EdgeInsets.only(top: 20),
                              child: MasonryGridView.builder(
                                itemCount: value.length,
                                padding: EdgeInsetsDirectional.symmetric(
                                    horizontal: 20),
                                physics: BouncingScrollPhysics(),
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 20,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemBuilder: (context, index) =>
                                    ZoomTapAnimation(
                                  onTap: () {},
                                  onLongTap: () {},
                                  child: hargaPasarCard(context,
                                      image:
                                          "${dotenv.env['BASEURL_SILINDA_IMAGE_ITEM']}${value[index].commodityImagePath}",
                                      comoditasName: value[index].commodityName,
                                      price: value[index].value),
                                ),
                              ),
                            );
                    },
                  ))),
        );
      }),
    );
  }

  //ANCHOR - Filtered Item from User Input
  void _filterSearchResults(String query) {
    List<HargaPasarMod> dummySearchList = [];
    dummySearchList.addAll(original);
    if (query.isNotEmpty) {
      List<HargaPasarMod> dummyListData = [];
      for (var item in dummySearchList) {
        if (item.commodityName!.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      }
      // setState(() {
      // dataBox.value.clear();
      dataBox.value = dummyListData;
      // });
      return;
    } else {
      setState(() {
        dataBox.value.clear();
        dataBox.value = original;
      });
    }
  }

  Future hargaPasarBottomSheet() {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DatePicker(
          tanggal_awal: date,
        );
      },
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    dataBox.dispose();
    super.dispose();
  }
}
