import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/fasilitas/bloc/fasilitas_sub_bloc.dart';
import 'package:bebunge/src/features/fasilitas/view/fasilitas_content_page.dart';
import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:bebunge/src/widgets/images/cache_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class FasilitasPage extends StatefulWidget {
  const FasilitasPage(
      {this.title,
      this.fasilitasId,
      this.fasilitasDesc,
      this.fasilitasImage,
      super.key});
  final String? title;
  final String? fasilitasId;
  final String? fasilitasDesc;
  final String? fasilitasImage;

  @override
  State<FasilitasPage> createState() => _FasilitasPageState();
}

class _FasilitasPageState extends State<FasilitasPage> {
  String dummy =
      "<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>";

  String dummy2 =
      "<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FasilitasSubBloc()
        ..add(FasilitasSubEvent.started(id: widget.fasilitasId)),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: UXAppColors.primary,
            foregroundColor: UXColors.white,
            title: Text(
              "Fasilitas ${widget.title ?? ''}",
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeL,
                  fontWeight: FontWeight.w700),
            ),
          ),
          body: SingleChildScrollView(child: Builder(builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        width: double.infinity,
                        height: 240,
                        child: UXCacheNetworkImage(
                          imageUrl: widget.fasilitasImage ?? '',
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Deskripsi:',
                              style: TextStyle(
                                  fontSize: UXConstants.kFontSizeS,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          UXSpacer(
                            height: UXConstants.kPaddingS,
                          ),
                          HtmlWidget(widget.fasilitasDesc ?? dummy)
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                    color: UXColors.grey_40, thickness: UXConstants.kPaddingXS),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 20),
                  child: Container(
                    padding: EdgeInsetsDirectional.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(8),
                        color: UXAppColors.gojekGreen),
                    child: Text('Fasilitas yang Tersedia',
                        textAlign: TextAlign.left),
                  ),
                ),
                BlocBuilder<FasilitasSubBloc, FasilitasSubState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => SizedBox(),
                      loading: () => UXLoading(),
                      loaded: (data) => ListView.separated(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Material(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              elevation: 3,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8)),
                                        child: SizedBox(
                                          height: 200,
                                          width: double.infinity,
                                          child: UXCacheNetworkImage(
                                            imageUrl: data[index].gambar ?? "",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              color: UXAppColors.yellow,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  bottomRight:
                                                      Radius.circular(8))),
                                          child: Text(data[index].nama ?? ''),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: HtmlWidget(
                                            data[index].deskripsi ?? dummy2,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Material(
                                            elevation: 3,
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(10),
                                            color: UXAppColors.biru1,
                                            child: InkWell(
                                              splashColor: UXColors.white
                                                  .withOpacity(0.3),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              onTap: () {
                                                pushDynamicScreen(context,
                                                    screen: PageTransition(
                                                        child:
                                                            FasilitasContentPage(
                                                                title:
                                                                    data[index]
                                                                        .nama,
                                                                subItemId: data[
                                                                        index]
                                                                    .id
                                                                    .toString()),
                                                        curve: Curves.easeInOut,
                                                        type: PageTransitionType
                                                            .rightToLeft),
                                                    withNavBar: false);
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(8),
                                                decoration: BoxDecoration(),
                                                child: Text(
                                                  'Lihat Semua',
                                                  style: TextStyle(
                                                      fontSize: UXConstants
                                                          .kFontSizeS,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: UXColors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          separatorBuilder: (context, index) =>
                              UXSpacer(height: 10),
                          itemCount: data.length),
                    );
                  },
                )
              ],
            );
          })),
        ),
      ),
    );
  }
}
