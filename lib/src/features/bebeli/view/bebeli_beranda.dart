import 'package:bebunge/src/features/bebeli/bloc/filter_kecamatan_bloc.dart';
import 'package:bebunge/src/features/bebeli/view/bebeli_search_provider.dart';
import 'package:bebunge/src/features/bebeli_keranjang.dart/view/bebeli_keranjang.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../config/ux_screen.dart';
import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../bloc/bebeli_category_bloc.dart';
import '../bloc/bebeli_slider_bloc.dart';
import '../bloc/filter_kelurahan_bloc.dart';
import '../widget/bebeli_berita_card.dart';
import '../widget/carousel.dart';

class BebeliBeranda extends StatefulWidget {
  const BebeliBeranda({super.key});

  @override
  State<BebeliBeranda> createState() => _BebeliState();
}

class _BebeliState extends State<BebeliBeranda> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: UXColors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => FilterKecamatanBloc(),
            ),
            BlocProvider(
              create: (context) => FilterKelurahanBloc(),
            ),
          ],
          child: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  centerTitle: false,
                  automaticallyImplyLeading: false,
                  title: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 32,
                        margin: EdgeInsets.only(left: 15),
                        child: Image.asset(
                          Assets.images.bebungeFullColor.path,
                        ),
                      )),
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
                                theme:
                                    SvgTheme(currentColor: UXAppColors.biru1),
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
                          height: 40,
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: UXConstants.kPaddingXL),
                          child: Row(
                            children: [
                              // UXSpacer(width: 5),
                              Flexible(
                                child: UXInputCustom(
                                  textInputAction: TextInputAction.search,
                                  controller: _searchController,
                                  hintText: 'Cari produk',
                                  onFieldSubmitted: (p0) {
                                    pushDynamicScreen(context,
                                        screen: PageTransition(
                                          child: BebeliSearchProvider(
                                              searchValue: p0),
                                          type: PageTransitionType.scale,
                                          alignment: Alignment.bottomRight,
                                          duration: Duration(milliseconds: 400),
                                        ));
                                    hideKeyboard(context);
                                    _searchController.clear();
                                  },
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          )),
                      preferredSize: Size.fromHeight(40)),
                ),
                body: CustomScrollView(
                  slivers: [
                    //ANCHOR - Bebeli Slider
                    SliverToBoxAdapter(
                        child: Padding(
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 20, vertical: 20),
                      child: BlocBuilder<BebeliSliderBloc, BebeliSliderState>(
                        builder: (C, S) {
                          return Carousel(
                            loading: S.maybeWhen(
                              orElse: () => true,
                              loading: () => true,
                              error: (error) => true,
                              loaded: (data) => false,
                            ),
                            listPaths: S.whenOrNull(
                              loaded: (data) => data,
                            ),
                          );
                        },
                      ),
                    )),
                    //ANCHOR - Bebeli Category
                    SliverToBoxAdapter(
                        child: Padding(
                      padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 20,
                      ),
                      child: Container(
                        height: 180,
                        width: UXScreens.width,
                        child: BlocBuilder<BebeliCategoryBloc,
                            BebeliCategoryState>(
                          builder: (C, S) {
                            return ListView.separated(
                                padding: EdgeInsetsDirectional.symmetric(
                                    vertical: 5),
                                itemBuilder: (context, index) => S.maybeWhen(
                                    orElse: () => SizedBox(),
                                    loaded: (data) => BebeliBeritaCard(
                                        score: data[index].rate,
                                        titleShop: data[index].toko,
                                        kec: data[index].kecamatan,
                                        keldes: data[index].keldes,
                                        title: data[index].namaProduk,
                                        category: data[index].namaKategori,
                                        image: data[index].gambar),
                                    loading: () => Shimmer.fromColors(
                                        baseColor: UXColors.shimmerBaseColor,
                                        highlightColor:
                                            UXColors.shimmerHighlightColor,
                                        child: Container(
                                          color: UXColors.white,
                                        ))),
                                separatorBuilder: (context, index) => UXSpacer(
                                      width: UXConstants.kPaddingM,
                                    ),
                                itemCount: 8,
                                scrollDirection: Axis.horizontal);
                          },
                        ),
                      ),
                    )),
                  ],
                )),
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
