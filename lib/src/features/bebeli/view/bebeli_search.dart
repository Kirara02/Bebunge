import 'package:bebunge/src/config/ux_screen.dart';
import 'package:bebunge/src/features/bebeli_detail/view/bebeli_detail.dart';
import 'package:bebunge/src/widgets/common/empty_list.dart';
import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../network/model/bebeli/bebeli_product.dart';
import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/common/ux_spacer.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../../bebeli_keranjang.dart/view/bebeli_keranjang.dart';
import '../bloc/bebeli_filter_bloc.dart';
import '../cubit/bebeli_params_cubit.dart';
import '../widget/bebeli_product_card.dart';
import '../widget/category_active_menu.dart';
import '../widget/filter_menu_widget.dart';
import '../widget/sub_category_active_menu.dart';

class BebeliSearch extends StatefulWidget {
  const BebeliSearch({this.searchValue, super.key});

  final String? searchValue;

  @override
  State<BebeliSearch> createState() => _BebeliState();
}

class _BebeliState extends State<BebeliSearch> {
  late int _pageNumber;
  late bool _error;
  late bool _loading;
  late int _numberOfPostsPerRequest;
  late bool empty = false;
  ValueNotifier<bool> _showSearch = ValueNotifier(false);
  List<BebeliProduct> _posts = [];
  late ScrollController _scrollController;
  TextEditingController _searchController = TextEditingController();

  void initPage(BuildContext context) {
    final bloc = context.read<BebeliParamsCubit>();
    bloc.addParams(start: (0).toString());
    BlocProvider.of<BebeliFilterBloc>(context)
      ..add(BebeliFilterEvent.started(bloc.state));
  }

  @override
  void initState() {
    final bloc = context.read<BebeliParamsCubit>();
    setState(() {
      _searchController.text = widget.searchValue ?? '';
    });
    bloc.addParams(cari: widget.searchValue);
    _scrollController = ScrollController();
    initPage(context);

    _scrollController.addListener(() {
      var nextPageTrigger = 0.8 * _scrollController.position.maxScrollExtent;
      if (_scrollController.position.pixels > nextPageTrigger) {
        bloc.addParams(start: (_pageNumber + 10).toString());
        BlocProvider.of<BebeliFilterBloc>(context)
          ..add(BebeliFilterEvent.started(bloc.state));
      }
    });
    _searchController.addListener(() {
      if (_searchController.text.isNotEmpty) {
        _showSearch.value = false;
      } else {
        _showSearch.value = true;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<BebeliParamsCubit>().addParams(
            cari: '',
            kategori: '',
            kecamatan: '',
            kelurahan: '',
            start: '',
            sub: '');
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  context.read<BebeliParamsCubit>().addParams(
                      cari: '',
                      kategori: '',
                      kecamatan: '',
                      kelurahan: '',
                      start: '',
                      sub: '');
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            actions: [
              GestureDetector(
                onTap: () {
                  pushDynamicScreen(context,
                      screen: PageTransition(
                          child: BebeliKeranjang(),
                          type: PageTransitionType.rightToLeft));
                },
                child: Row(
                  children: [
                    SizedBox(
                        width: UXConstants.kIconsM,
                        child: SvgPicture.asset(
                          Assets.svgs.cart.path,
                          theme: SvgTheme(currentColor: UXAppColors.biru1),
                        )),
                    SizedBox(width: UXConstants.kPaddingXS),
                    Text(
                      'Bebeli',
                      style: TextStyle(
                          fontSize: UXConstants.kFontSizeXL,
                          fontWeight: FontWeight.w700,
                          color: UXAppColors.biru1),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: UXConstants.kPaddingL,
              )
            ],
            bottom: PreferredSize(
                child: Container(
                    height: 90,
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: UXConstants.kPaddingXL),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 40,
                          child: UXInputCustom(
                            textInputAction: TextInputAction.search,
                            controller: _searchController,
                            hintText: 'Cari produk',
                            onFieldSubmitted: (value) {
                              if (value.isNotEmpty) {
                                setState(() {
                                  _showSearch.value = true;
                                  _posts.clear();
                                });
                                context
                                    .read<BebeliParamsCubit>()
                                    .addParams(cari: value);

                                initPage(context);
                                hideKeyboard(context);
                              }
                            },
                            onChanged: (value) {},
                          ),
                        ),
                        UXSpacer(width: 10),
                        //ANCHOR - Reset Categori
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Builder(builder: (context) {
                              return InkWell(
                                onTap: () {
                                  _filterMenu(
                                    context,
                                  ).then((value) {
                                    if (value != null && value) {
                                      _posts.clear();
                                      initPage(context);
                                    }
                                  });
                                },
                                child: Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                10),
                                        border: Border.all(
                                            color: UXColors.grey_40)),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Symbols.filter_alt,
                                          size: 20,
                                          color: UXColors.grey_80,
                                        ),
                                        Text(
                                          'Filter',
                                          style: TextStyle(
                                              fontSize: UXConstants.kFontSizeM,
                                              fontWeight: FontWeight.w500,
                                              color: UXColors.grey_60),
                                        )
                                      ],
                                    )),
                              );
                            }),
                            // UXSpacer(
                            //   width: 5,
                            // ),
                            //ANCHOR - Kategori Filter
                            TextButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(7)),
                                    minimumSize:
                                        MaterialStateProperty.all(Size.zero),
                                    side: MaterialStateProperty.all(
                                        BorderSide(color: UXColors.grey_40))),
                                onPressed: () {
                                  _filterCategory(context).then((value) {
                                    if (value != null && value) {
                                      _posts.clear();
                                      initPage(context);
                                    }
                                  });
                                },
                                child: Text(
                                  'Kategori',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: UXConstants.kFontSizeM,
                                      color: UXColors.grey_60,
                                      letterSpacing: 0.3),
                                )),
                            TextButton(
                              onPressed: () {
                                _subCategoryList(context).then((value) {
                                  if (value != null && value) {
                                    setState(() {
                                      _posts.clear();
                                    });
                                    initPage(context);
                                  }
                                });
                              },
                              child: Text(
                                'Kategori Lainnya',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: UXConstants.kFontSizeM,
                                    color: UXColors.grey_60,
                                    letterSpacing: 0.3),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.all(7)),
                                  minimumSize:
                                      MaterialStateProperty.all(Size.zero),
                                  side: MaterialStateProperty.all(BorderSide(
                                      color:
                                          UXColors.grey_40.withOpacity(0.9)))),
                            ),
                            // Expanded(
                            //   child: UXSpacer(
                            //     width: 10,
                            //   ),
                            // ),
                            TextButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(7)),
                                    minimumSize:
                                        MaterialStateProperty.all(Size.zero),
                                    side: MaterialStateProperty.all(BorderSide(
                                        color: UXColors.grey_40
                                            .withOpacity(0.9)))),
                                onPressed: () {
                                  context.read<BebeliParamsCubit>()
                                    ..addParams(
                                        kecamatan: '',
                                        kelurahan: '',
                                        kategori: '',
                                        toko: '',
                                        sub: '');
                                  setState(() {
                                    _posts.clear();
                                  });
                                  initPage(context);
                                },
                                child: Text(
                                  'Reset',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: UXConstants.kFontSizeM,
                                      color: UXColors.grey_60),
                                )),
                          ],
                        )
                      ],
                    )),
                preferredSize: Size.fromHeight(80)),
          ),
          body: RefreshIndicator(
            onRefresh: () => Future.sync(() {
              setState(() {
                _posts.clear();
              });
              initPage(context);
            }),
            child: BlocListener<BebeliFilterBloc, BebeliFilterState>(
              listener: (context, state) {
                state.whenOrNull(
                  loaded: (
                    currentPage,
                    nextPage,
                    data,
                  ) {
                    setState(() {
                      empty = false;
                    });
                    if (nextPage) {
                      setState(() {
                        _pageNumber = currentPage;
                        _posts.addAll(data);
                      });
                    } else {
                      if (currentPage == 0) {
                        setState(() {
                          _posts.addAll(data);
                        });
                      }
                    }
                  },
                  error: (error) {
                    error.whenOrNull(
                      notFound: (reason) {
                        setState(() {
                          empty = true;
                        });
                      },
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Builder(builder: (context) {
                  return empty
                      ? SingleChildScrollView(
                          child: Container(
                          alignment: Alignment.center,
                          height: UXScreens.height * 0.7,
                          child: EmptyList(
                            size: 200,
                            title: 'Barang tidak ditemukan',
                          ),
                        ))
                      : _posts.isNotEmpty
                          ? MasonryGridView.builder(
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 20),
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              controller: _scrollController,
                              itemCount: _posts.length,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              gridDelegate:
                                  SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                              ),
                              itemBuilder: (context, index) => ZoomTapAnimation(
                                onTap: () {},
                                onLongTap: () {},
                                child: BebeliProductCard(
                                  image: _posts[index].gambar,
                                  price: _posts[index].harga,
                                  title: _posts[index].namaProduk,
                                  titleShop: _posts[index].toko,
                                  kec: _posts[index].kecamatan,
                                  diskon: _posts[index].diskon,
                                  hargaDiskon: _posts[index].hargaDiskon,
                                  score: double.tryParse(_posts[index].rate!),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: BebeliDetail(
                                                id: _posts[index].id),
                                            type: PageTransitionType
                                                .rightToLeft));
                                  },
                                ),
                              ),
                            )
                          : UXLoading();
                }),
              ),
            ),
          )),
    );
  }

  Future _filterMenu(BuildContext context) {
    return showModalBottomSheet(
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(25), topEnd: Radius.circular(25))),
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (context) {
        return FilterMenuWidget();
      },
    );
  }

  Future _filterCategory(BuildContext context) {
    return showMaterialModalBottomSheet(
      context: context,
      builder: (context) => CategoryActiveMenu(),
    );
  }

  Future _subCategoryList(BuildContext context) {
    return showMaterialModalBottomSheet(
      context: context,
      builder: (context) => SubCategoryActiveMenu(),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();

    super.dispose();
  }
}
