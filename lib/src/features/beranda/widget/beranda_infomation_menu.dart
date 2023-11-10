import 'package:bebunge/src/features/beranda/bloc/fasilitas_bloc.dart';
import 'package:bebunge/src/features/fasilitas/view/fasilitas_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../pendidikan/view/pendidikan.dart';

class BerandaInformationMenu extends StatelessWidget {
  const BerandaInformationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Widget pendidikan = buttonMenu(
      context,
      buttonTitle: 'Pendidikan',
      onTap: () {
        pushDynamicScreen(context,
            screen: PageTransition(
                child: Pendidikan(),
                type: PageTransitionType.rightToLeft,
                duration: Duration(milliseconds: 500)),
            withNavBar: false);
      },
    );
    return BlocBuilder<FasilitasBloc, FasilitasState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => SliverToBoxAdapter(),
            loaded: (data) {
              List<Widget> widgetAPi = List.generate(
                data.length,
                (index) => buttonMenu(
                  context,
                  buttonTitle: data[index].nama,
                  onTap: () {
                    pushDynamicScreen(context,
                        screen: PageTransition(
                            child: FasilitasPage(
                                title: data[index].nama,
                                fasilitasId: data[index].id.toString(),
                                fasilitasImage: data[index].gambar,
                                fasilitasDesc: data[index].deskripsi),
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 500)),
                        withNavBar: false);
                  },
                ),
              );
              widgetAPi.add(pendidikan);
              return SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 35,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                delegate: SliverChildListDelegate.fixed(widgetAPi),
              );
            });
      },
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
}

// Expanded(
//                 child: buttonMenu(
//                   context,
//                   buttonTitle: 'Pendidikan',
//                   onTap: () {
//                     pushDynamicScreen(context,
//                         screen: PageTransition(
//                             child: Pendidikan(),
//                             type: PageTransitionType.rightToLeft,
//                             duration: Duration(milliseconds: 500)),
//                         withNavBar: false);
//                   },
//                 ),
//               ),
