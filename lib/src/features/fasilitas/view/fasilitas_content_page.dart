import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/fasilitas/bloc/fasilitas_content_bloc.dart';
import 'package:bebunge/src/widgets/common/empty_list.dart';
import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../widgets/images/cache_network.dart';

class FasilitasContentPage extends StatefulWidget {
  const FasilitasContentPage({this.subItemId, this.title, super.key});
  final String? title;
  final String? subItemId;

  @override
  State<FasilitasContentPage> createState() => _FasilitasContentPageState();
}

class _FasilitasContentPageState extends State<FasilitasContentPage> {
  Future<void> UXOpenMap({String? lat, String? long}) async {
    final String googleMapslocationUrl =
        "https://www.google.com/maps/search/?api=1&query=${lat},${long}";
    if (!await launchUrlString(googleMapslocationUrl,
        mode: LaunchMode.externalApplication,
        webViewConfiguration: WebViewConfiguration(
            enableDomStorage: true, enableJavaScript: true))) {
      throw Exception('Could not launch $googleMapslocationUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FasilitasContentBloc()
        ..add(FasilitasContentEvent.started(id: widget.subItemId)),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: UXAppColors.primary,
              foregroundColor: UXColors.white,
              centerTitle: true,
              title: Text(
                widget.title ?? '',
                style: TextStyle(
                    fontSize: UXConstants.kFontSizeM,
                    fontWeight: FontWeight.w600),
              )),
          body: Builder(builder: (context) {
            return BlocBuilder<FasilitasContentBloc, FasilitasContentState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => SizedBox(),
                    loading: () => UXLoading(),
                    loaded: (data) => data.isNotEmpty
                        ? ListView.separated(
                            padding: EdgeInsets.all(20),
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
                                              imageUrl:
                                                  data[index].gambar ?? "",
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
                                            child:
                                                Text(data[index].title ?? ''),
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
                                          Row(children: [
                                            Text(
                                              'Alamat:',
                                              style: TextStyle(
                                                  fontSize:
                                                      UXConstants.kFontSizeS,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            UXSpacer(
                                                width: UXConstants.kPaddingS),
                                            Text(data[index].alamat ?? '')
                                          ]),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: HtmlWidget(
                                              data[index].content ?? '',
                                            ),
                                          ),
                                          UXSpacer(
                                              height: UXConstants.kPaddingS),
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
                                                  UXOpenMap(
                                                      lat: data[index].latitude,
                                                      long: data[index]
                                                          .longitude);
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.all(8),
                                                  decoration: BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Icon(Symbols.location_on,
                                                          color: UXAppColors
                                                              .danger,
                                                          size: UXConstants
                                                              .kPaddingM),
                                                      UXSpacer(
                                                        width: UXConstants
                                                            .kPaddingS,
                                                      ),
                                                      Text(
                                                        'Lihat Lokasi',
                                                        style: TextStyle(
                                                            fontSize:
                                                                UXConstants
                                                                    .kFontSizeS,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                UXColors.white),
                                                      ),
                                                    ],
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
                            separatorBuilder: (context, index) => SizedBox(
                                  height: UXConstants.kPaddingL,
                                ),
                            itemCount: data.length)
                        : Center(
                            child: EmptyList(
                              size: 200,
                              title: 'Fasilitas tidak ditemukan',
                            ),
                          ));
              },
            );
          }),
        ),
      ),
    );
  }
}
