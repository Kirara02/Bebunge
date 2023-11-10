import 'package:bebunge/src/widgets/common/empty_list.dart';
import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';


import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../config/ux_screen.dart';
import '../../../network/model/pendidikan/sekolah_detail.dart';
import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../../../widgets/images/cache_network.dart';
import '../bloc/sekolah_list_bloc.dart';
import '../cubit/pendidikan_params_cubit.dart';
import '../widget/sekolah_menu.dart';

class PendidikanBody extends StatefulWidget {
  const PendidikanBody({super.key});

  @override
  State<PendidikanBody> createState() => _PendidikanBodyState();
}

class _PendidikanBodyState extends State<PendidikanBody> {
  TextEditingController searchController = TextEditingController();
  final PagingController<int, SekolahDetail> _pagingCtrl =
      PagingController(firstPageKey: 1, invisibleItemsThreshold: 3);

  void fetchPage(BuildContext context) {
    final bloc = context.read<PendidikanParamsCubit>();
    _pagingCtrl.addPageRequestListener((pageKey) {
      bloc.addParams(page: pageKey.toString());
      BlocProvider.of<SekolahListBloc>(context)
        ..add(SekolahListEvent.started(bloc.state));
    });
  }

  @override
  void initState() {
    fetchPage(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: UXColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            automaticallyImplyLeading: false,
            title: Container(
                height: 32,
                margin: EdgeInsets.only(left: 15),
                child: Image.asset(
                  Assets.images.bebungeFullColor.path,
                )),
            actions: [
              Row(
                children: [
                  SizedBox(
                      width: UXConstants.kIconsM,
                      child: Image.asset(Assets.images.pendidikan.path)),
                  SizedBox(width: UXConstants.kPaddingXS),
                  Text(
                    'Pendidikan',
                    style: TextStyle(
                        fontSize: UXConstants.kFontSizeXL,
                        fontWeight: FontWeight.w700,
                        color: UXAppColors.biru1),
                  )
                ],
              ),
              SizedBox(
                width: UXConstants.kPaddingL,
              )
            ],
            bottom: PreferredSize(
                child: Container(
                    height: 40,
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: UXConstants.kPaddingXL),
                    child: UXInputCustom(
                      controller: searchController,
                      onChanged: (value) {
                        EasyDebounce.debounce(
                            'search', Duration(milliseconds: 1000), () {
                          context
                              .read<PendidikanParamsCubit>()
                              .addParams(search: value);
                          _pagingCtrl.refresh();

                          // searchController.clear();
                          hideKeyboard(context);
                        });
                      },
                    )),
                preferredSize: Size.fromHeight(40)),
          ),
          body: BlocListener<SekolahListBloc, SekolahListState>(
            listener: (context, state) {
              state.whenOrNull(
                loaded: (
                  currentPage,
                  nextPage,
                  data,
                ) {
                  if (nextPage) {
                    _pagingCtrl.appendPage(data, currentPage + 1);
                  } else {
                    _pagingCtrl.appendLastPage(data);
                  }
                },
              );
            },
            child: Column(
              children: [
                SizedBox(
                  height: UXConstants.kPaddingS,
                ),
                SekolahMenu(_pagingCtrl),
                SizedBox(
                  height: UXConstants.kPaddingS,
                ),
                Expanded(
                    child: PagedListView<int, SekolahDetail>.separated(
                  padding: EdgeInsetsDirectional.only(
                      start: 20, end: 20, bottom: 30),
                  physics: BouncingScrollPhysics(),
                  pagingController: _pagingCtrl,
                  builderDelegate: PagedChildBuilderDelegate(
                      firstPageProgressIndicatorBuilder: (context) =>
                          UXLoading(),
                      noItemsFoundIndicatorBuilder: (context) => EmptyList(
                          size: 180, title: 'Sekolah yang dicari tidak ada'),
                      itemBuilder: (context, item, index) {
                        return cardSekolah(
                          context,
                          namaSekolah: item.namaSekolah,
                          jenisSekolah: item.jenisSekolah,
                          jenjangSekolah: item.jenjangSekolah,
                          alamat: item.alamat,
                          nomorTelepon: item.noTelp,
                          image: item.image,
                          onPressed: () {},
                        );
                      }),
                  separatorBuilder: (context, index) => Divider(),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cardSekolah(BuildContext context,
      {String? url,
      String? jenisSekolah,
      String? jenjangSekolah,
      String? namaSekolah,
      String? nomorTelepon,
      String? alamat,
      String? image,
      Function()? onPressed}) {
    final double? tagFontSize = UXConstants.kFontSizeXS;
    final double? titleFontSize = UXConstants.kFontSizeXS;
    final double? dateFontSize = UXConstants.kFontSizeXS;
    return Container(
      height: 80,
      // decoration: BoxDecoration(color: UXAppColors.danger),
      width: UXScreens.width,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            //ANCHOR - Card Image Berita
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(5),
              child: SizedBox(
                width: 118,
                child: UXCacheNetworkImage(
                  imageUrl: image!,
                ),
              ),
            ),
            SizedBox(width: 8),
            //ANCHOR - Body Card
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  //ANCHOR - Tagging Berita
                  Row(children: [
                    FittedBox(
                      child: Container(
                          height: 19,
                          alignment: Alignment.center,
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 16, vertical: 2),
                          decoration: BoxDecoration(
                              color: UXAppColors.yellow,
                              borderRadius:
                                  BorderRadiusDirectional.circular(3)),
                          child: Text(
                            jenisSekolah ?? '',
                            style: TextStyle(
                                fontSize: tagFontSize,
                                fontWeight: FontWeight.w300),
                          )),
                    ),
                    SizedBox(
                      width: UXConstants.kPaddingXS,
                    ),
                    FittedBox(
                      child: Container(
                          height: 19,
                          alignment: Alignment.center,
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 16, vertical: 2),
                          decoration: BoxDecoration(
                              color: UXAppColors.yellow,
                              borderRadius:
                                  BorderRadiusDirectional.circular(3)),
                          child: Text(
                            jenjangSekolah ?? '',
                            style: TextStyle(
                                fontSize: tagFontSize,
                                fontWeight: FontWeight.w300),
                          )),
                    ),
                  ]),

                  SizedBox(height: UXConstants.kPaddingXS),
                  //ANCHOR - Title Sekolah
                  Expanded(
                      child: Text(
                    namaSekolah ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.w700,
                        height: 1.3),
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: UXConstants.kIconsXS,
                      ),
                      Text(
                        nomorTelepon ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.w300,
                            height: 1.3),
                      ),
                    ],
                  )),
                  Flexible(
                    child: Row(
                      children: [
                        //ANCHOR - Date Icon
                        Icon(
                          Icons.location_on_sharp,
                          size: UXConstants.kIconsXS,
                        ),
                        SizedBox(width: UXConstants.kPaddingXS),
                        //ANCHOR - Date Release
                        Flexible(
                          child: Text(
                            alamat ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: dateFontSize,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
