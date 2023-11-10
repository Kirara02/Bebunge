import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../network/model/darurat/darurat_kategory_mod.dart';
import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/common/ux_spacer.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../bloc/darurat_kategori_bloc.dart';

class DaruratList extends StatefulWidget {
  const DaruratList({super.key});

  @override
  State<DaruratList> createState() => _DaruratListState();
}

class _DaruratListState extends State<DaruratList> {
  late List<DaruratKategoryMod> original;
  ValueNotifier<List<DaruratKategoryMod>> dataBox = ValueNotifier([]);
  TextEditingController searchController = TextEditingController();
  ValueNotifier<String> textSearch = ValueNotifier('');
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DaruratKategoriBloc()..add(DaruratKategoriEvent.started()),
      child: Builder(builder: (context) {
        return BlocListener<DaruratKategoriBloc, DaruratKategoriState>(
          listener: (context, state) {
            state.whenOrNull(
              loading: () {
                setState(() {
                  loading = true;
                });
              },
              loaded: (data) {
                setState(() {
                  original = data;
                  dataBox.value = data;
                });
                loading = false;
              },
            );
          },
          child: Material(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                UXSpacer(
                  height: 10,
                ),
                //ANCHOR - SeachBox
                Container(
                    height: 40,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                    child: UXInputCustom(
                        controller: searchController,
                        // value: searchController.value.text,
                        onChanged: (value) {
                          EasyDebounce.debounce(
                              'search', Duration(milliseconds: 1000), () {
                            textSearch.value = value;
                            filterSearchResults(searchController.value.text);
                            hideKeyboard(context);
                          });
                        },
                        hintText: 'Cari Kejadian',
                        suffixIcon: ValueListenableBuilder(
                          valueListenable: textSearch,
                          builder: (context, value, child) =>
                              textSearch.value.isEmpty
                                  ? Icon(Icons.search, color: UXColors.grey_80)
                                  : InkResponse(
                                      containedInkWell: false,
                                      onTap: () {
                                        setState(() {
                                          searchController.value =
                                              TextEditingValue();
                                          textSearch.value = '';
                                          filterSearchResults(
                                              searchController.value.text);
                                        });
                                      },
                                      child: Icon(
                                        Icons.close,
                                        color: UXAppColors.danger,
                                      ),
                                    ),
                        ))),
                UXSpacer(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    // height: UXScreens.height * 0.4,
                    child: ValueListenableBuilder<List<DaruratKategoryMod>>(
                      valueListenable: dataBox,
                      builder: (context, data, child) {
                        return loading
                            ? UXLoading()
                            : ListView.builder(
                                padding: EdgeInsetsDirectional.symmetric(
                                    horizontal: 10),
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Card(
                                  color: (index % 2) == 0
                                      ? UXColors.grey_20
                                      : null,
                                  elevation: 2,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(4),
                                    splashColor: UXAppColors.gojekRed,
                                    onTap: () {
                                      Navigator.pop(context, [
                                        data[index].idKategory,
                                        data[index].keterangan,
                                      ]);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 12),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                "${index + 1}. ${data[index].kategori ?? ''}",
                                                style: TextStyle(
                                                    fontSize:
                                                        UXConstants.kFontSizeM,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            UXSpacer(
                                              height: UXConstants.kPaddingXS,
                                            ),
                                            Text(
                                              "${data[index].keterangan}",
                                              style: TextStyle(
                                                  fontSize:
                                                      UXConstants.kFontSizeM,
                                                  color: Color.fromARGB(
                                                      255, 157, 163, 171)),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                                itemCount: data.length,
                              );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  //ANCHOR - Filtered Item from User Input
  void filterSearchResults(String query) {
    List<DaruratKategoryMod> dummySearchList = [];
    dummySearchList.addAll(original);
    if (query.isNotEmpty) {
      List<DaruratKategoryMod> dummyListData = [];
      for (var item in dummySearchList) {
        if (item.keterangan!.toLowerCase().contains(query.toLowerCase())) {
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

  @override
  void dispose() {
    dataBox.dispose();
    searchController.dispose();
    textSearch.dispose();
    super.dispose();
  }
}
