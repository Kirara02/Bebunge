import 'package:bebunge/src/features/beranda/bloc/beranda_slider_bloc.dart';
import 'package:bebunge/src/features/beranda/bloc/fasilitas_bloc.dart';
import 'package:bebunge/src/features/beranda/widget/beranda_about_menu.dart';
import 'package:bebunge/src/features/beranda/widget/beranda_infomation_menu.dart';
import 'package:bebunge/src/features/beranda/widget/jadwal_shalat_banner.dart';
import 'package:bebunge/src/features/shared/jadwal_shalat/jadwal_shalat_bloc.dart';
import 'package:bebunge/src/features/shared/jadwal_shalat/jadwal_shalat_cubit.dart';
import 'package:bebunge/src/network/model/bebeli/bebeli_slider_img.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/button/button.dart';
import '../../../widgets/wrapper/custom_wrapper.dart';
import '../../berita/view/berita.dart';
import '../../berita_detail/view/berita_detail.dart';
import '../../shared/berita_terkini/berita_terkini_bloc.dart';
import '../widget/bebunge_header_icon.dart';
import '../widget/beranda_main_icon.dart';
import '../widget/berita_card.dart';
import '../widget/carousel_beranda.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

List<String> dummy = [
  "https://www.bekasikab.go.id/uploads/news/id7250_Compress_20230518_090809_9506.jpg",
  "https://www.bekasikab.go.id/uploads/news/id7248_Compress_20230517_205755_5186.jpg",
  "https://www.bekasikab.go.id/uploads/news/id7242_Compress_20230517_171534_4148.jpg"
];

class _BerandaState extends State<Beranda> {
  bool valid_form = false;
  bool showJadwal = true;
  String lat = '-6.170166';
  String lon = '106.831375';

  _getLocalData() async {
    var pref = await SharedPreferences.getInstance();
    var location = pref.getStringList(UXConstants.location);
    if (location != null) {
      setState(() {
        lat = location[0];
        lon = location[1];
      });
    }
  }

  @override
  void initState() {
    _getLocalData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BeritaTerkiniBloc()
            ..add(BeritaTerkiniEvent.started(pageNumber: 1, showContent: true)),
        ),
        BlocProvider(
            create: (context) =>
                FasilitasBloc()..add(FasilitasEvent.started())),
        BlocProvider(
          create: (context) => JadwalShalatBloc()
            ..add(JadwalShalatEvent.started(lat: lat, long: lon)),
        ),
        BlocProvider(
          create: (context) =>
              BerandaSliderBloc()..add(BerandaSliderEvent.started()),
        )
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: UXAppColors.primaryColors,
          statusBarIconBrightness: Brightness.light,
          // systemNavigationBarColor: UXAppColors.primaryColors,
          // systemNavigationBarContrastEnforced: true,
          // systemNavigationBarIconBrightness: Brightness.light,
        ),
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            body: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                            padding:
                                EdgeInsets.only(top: 20, left: 20, right: 20),
                            height: 68,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AnimatedContainer(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.decelerate,
                                    transform:
                                        Matrix4.translationValues(5, 5, 0),
                                    child: BebungeHeaderIcon()),
                                // SvgPicture.asset(Assets.svgs.user.path)
                              ],
                            )),
                        //ANCHOR - Jadwal Shalat/Slider
                        BlocBuilder<JadwalShalatCubit, bool>(
                          builder: (context, state) => state
                              ? BlocBuilder<JadwalShalatBloc,
                                  JadwalShalatState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      orElse: () => SizedBox(),
                                      loading: () => Shimmer.fromColors(
                                          baseColor: UXColors.shimmerBaseColor,
                                          highlightColor:
                                              UXColors.shimmerHighlightColor,
                                          child: Container(
                                            color: UXColors.white,
                                          )),
                                      loaded: (data) => JadwalShalatBanner(
                                        subuh: data.timings.fajr,
                                        zuhur: data.timings.dhuhr,
                                        asyar: data.timings.asr,
                                        magrib: data.timings.maghrib,
                                        isya: data.timings.isha,
                                      ),
                                    );
                                  },
                                )
                              : BlocBuilder<BerandaSliderBloc,
                                  BerandaSliderState>(
                                  builder: (context, state) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, left: 20, right: 20),
                                      child: CarouselBeranda(
                                          loading: state.maybeWhen(
                                            orElse: () => true,
                                            loading: () => true,
                                            loaded: (data) => false,
                                          ),
                                          listPaths: List.generate(
                                              state.maybeWhen(
                                                orElse: () => 0,
                                                loading: () => 0,
                                                loaded: (data) => data.length,
                                              ),
                                              (index) => BebeliSliderImg(
                                                      img: state.maybeWhen(
                                                    orElse: () => '',
                                                    loading: () => '',
                                                    loaded: (data) =>
                                                        data[index].gambar,
                                                  )))),
                                    );
                                  },
                                ),
                        ),
                        //ANCHOR - jadwal Shalat

                        //ANCHOR - Main Menu
                        SizedBox(height: 180, child: BerandaMainIcon()),
                        //ANCHOR - Bebunge News
                        Builder(builder: (context) {
                          return CustomWrapper(
                            name: LocaleKeys.news_bubunge_news.tr(),
                            titleSize: 12,
                            buttonEnable: true,
                            buttonRadius: BorderRadius.circular(20),
                            buttonPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Berita(),
                                      type: PageTransitionType.rightToLeft));
                            },
                            child: SizedBox(
                              height: 210,
                              child: BlocBuilder<BeritaTerkiniBloc,
                                  BeritaTerkiniState>(
                                builder: (c, s) {
                                  return s.maybeWhen(
                                    orElse: () => SizedBox(),
                                    //ANCHOR - Loading
                                    loading: () => loadingCard(context),
                                    //ANCHOR - Fetched
                                    loaded: (data, bool, current) =>
                                        ListView.separated(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 5, bottom: 5),
                                            scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            itemBuilder:
                                                (context, index) =>
                                                    ZoomTapAnimation(
                                                      onLongTap: () {},
                                                      onTap: () {},
                                                      child: BeritaCard(
                                                        detail: data[index],
                                                        onTap: () {
                                                          pushDynamicScreen(
                                                              context,
                                                              screen:
                                                                  PageTransition(
                                                                      child:
                                                                          BeritaDetail(
                                                                        beritaId: data[index]
                                                                            .id
                                                                            .toString(),
                                                                      ),
                                                                      type: PageTransitionType
                                                                          .rightToLeft));
                                                        },
                                                      ),
                                                    ),
                                            separatorBuilder: (context, int) =>
                                                SizedBox(width: 20),
                                            itemCount: 5),
                                  );
                                },
                              ),
                            ),
                          );
                        }),
                        SizedBox(height: UXConstants.kPaddingS),

                        BerandaAboutMenu(),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: Container(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        UXSpacer(height: 16),
                        Text(
                          LocaleKeys.information.tr(),
                          style: TextStyle(
                              fontSize: UXConstants.kFontSizeM,
                              fontWeight: FontWeight.w700,
                              color: UXColors.grey_80),
                        ),
                        UXSpacer(height: 16)
                      ],
                    ),
                  )),
                  SliverPadding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 80),
                      sliver: BerandaInformationMenu())
                ]),
          ),
        ),
      ),
    );
  }

  Widget buttonMenu(BuildContext context,
      {String? buttonTitle, VoidCallback? onTap}) {
    return Material(
      child: InkWell(
          onTap: onTap,
          splashColor: UXAppColors.primaryColors.withAlpha(100),
          child: Container(
            alignment: Alignment.center,
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: 2, vertical: 2),
            height: 35,
            decoration: BoxDecoration(
                border: Border.all(color: UXAppColors.biru2),
                borderRadius: BorderRadiusDirectional.circular(5)),
            child: Text(
              buttonTitle ?? "",
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeS,
                  fontWeight: FontWeight.w700,
                  color: UXAppColors.biru2),
            ),
          )),
    );
  }

  UXButton signInButton(BuildContext context, {Function()? onPressed}) {
    return UXButton(
      onPressed: onPressed,
      title: LocaleKeys.auth_form_submit_signin.tr(),
      height: Theme.of(context).buttonTheme.height,
      backgroundColor: UXAppColors.primary,
      enabled: valid_form,
    );
  }

  Widget loadingCard(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.white,
              // period: Duration(milliseconds: 1500),
              child: Container(
                width: 260,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: UXColors.white,
                ),
              ),
            ),
        separatorBuilder: (context, int) => SizedBox(width: 20),
        itemCount: 5);
  }
}
