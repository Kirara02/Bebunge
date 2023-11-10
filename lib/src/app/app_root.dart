import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:bebunge/src/config/icons.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../features/beranda/view/beranda.dart';
import '../features/berita/view/berita.dart';
import '../features/darurat/view/darurat.dart';
import '../features/pengaturan/view/pengaturan.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  // int _selectedNavbar = 0;

  // void _changeSelectedNavBar(int index) {
  //   setState(() {
  //     _selectedNavbar = index;
  //   });
  //   _controller = PersistentTabController(initialIndex: 0);
  // }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Apakah anda yakin?'),
            content: const Text('Anda ingin keluar dari aplikasi'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Tidak'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Ya'),
              ),
            ],
          ),
        )) ??
        false;
  }

  List<Widget> _buildScreens() {
    return [Beranda(), Berita(), DaruratPage(), Pengaturan()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        routeAndNavigatorSettings: RouteAndNavigatorSettings(),
        icon: AppIcons.beranda,
        title: LocaleKeys.navbar_home.tr(),
        textStyle: TextStyle(
            fontWeight: FontWeight.w700, fontSize: UXConstants.kFontSizeS),
        activeColorPrimary: UXAppColors.primary,
        inactiveColorPrimary: UXColors.grey_60,
      ),
      PersistentBottomNavBarItem(
        icon: AppIcons.berita,
        title: LocaleKeys.navbar_news.tr(),
        textStyle: TextStyle(
            fontWeight: FontWeight.w700, fontSize: UXConstants.kFontSizeS),
        activeColorPrimary: UXAppColors.yellow,
        inactiveColorPrimary: UXColors.grey_60,
      ),
      PersistentBottomNavBarItem(
        icon: AppIcons.darurat,
        title: LocaleKeys.navbar_emergency.tr(),
        textStyle: TextStyle(
            fontWeight: FontWeight.w700, fontSize: UXConstants.kFontSizeS),
        activeColorPrimary: UXAppColors.danger,
        inactiveColorPrimary: UXColors.grey_60,
      ),
      PersistentBottomNavBarItem(
        icon: AppIcons.pengaturan,
        title: LocaleKeys.navbar_settings.tr(),
        textStyle: TextStyle(
            fontWeight: FontWeight.w700, fontSize: UXConstants.kFontSizeS),
        activeColorPrimary: UXAppColors.biru1,
        inactiveColorPrimary: UXColors.grey_60,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        popAllScreensOnTapAnyTabs: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        margin: EdgeInsets.all(0.0),
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,
        hideNavigationBar: false,

        onWillPop: (p0) => _onWillPop(),
        // hideNavigationBar: _hideNavBar,
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 300),
        ),
        navBarStyle:
            NavBarStyle.style3, // Choose the nav bar style with this property
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   elevation: 4,
      //   enableFeedback: true,
      //   selectedIconTheme: IconThemeData(color: UXAppColors.primary),
      //   selectedLabelStyle: TextStyle(
      //       color: UXAppColors.primary,
      //       fontWeight: FontWeight.w700,
      //       fontSize: UXConstants.kFontSizeS),
      //   unselectedLabelStyle: TextStyle(
      //       fontWeight: FontWeight.w400, fontSize: UXConstants.kFontSizeS),
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //         icon: Container(
      //           decoration: BoxDecoration(
      //               border: Border.symmetric(
      //                   vertical: BorderSide(color: UXAppColors.danger))),
      //           height: 20,
      //           width: 20,
      //           child: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               Image.asset(
      //                 Assets.images.iconHome.path,
      //               ),
      //               Text("Beranda")
      //             ],
      //           ),
      //         ),
      //         label: ''),
      //     BottomNavigationBarItem(
      //         icon: Container(
      //           decoration: BoxDecoration(),
      //           height: 20,
      //           width: 20,
      //           child: Image.asset(Assets.images.iconBerita.path),
      //         ),
      //         label: 'Berita'),
      //     BottomNavigationBarItem(
      //         icon: Container(
      //           decoration: BoxDecoration(),
      //           height: 20,
      //           width: 20,
      //           child: Image.asset(Assets.images.iconDarurat.path),
      //         ),
      //         label: 'Darurat'),
      //     // BottomNavigationBarItem(
      //     //     icon: Container(
      //     //       decoration: BoxDecoration(),
      //     //       height: 20,
      //     //       width: 20,
      //     //       child: Image.asset(Assets.images.iconAktivitas.path),
      //     //     ),
      //     //     label: 'Aktivitas'),
      //     BottomNavigationBarItem(
      //         icon: Container(
      //             decoration: BoxDecoration(),
      //             height: 20,
      //             width: 20,
      //             child: Icon(Icons.settings)),
      //         label: 'Pengaturan'),
      //   ],
      //   currentIndex: _selectedNavbar,
      //   selectedItemColor: Colors.green,
      //   unselectedItemColor: Colors.grey,
      //   showUnselectedLabels: true,
      //   onTap: _changeSelectedNavBar,
      // ),
    );
  }
}
