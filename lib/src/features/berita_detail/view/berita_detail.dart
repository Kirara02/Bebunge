import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../utils/date_utils.dart';
import '../../../widgets/images/cache_network.dart';
import '../bloc/berita_detail_bloc.dart';

class BeritaDetail extends StatefulWidget {
  const BeritaDetail({this.beritaId, super.key});
  final String? beritaId;
  @override
  State<BeritaDetail> createState() => _BeritaDetailState();
}

class _BeritaDetailState extends State<BeritaDetail> {
  String? _url;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BeritaDetailBloc()
        ..add(BeritaDetailEvent.started(beritaId: widget.beritaId ?? "0")),
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: SizedBox(
                height: 32,
                child: Image.asset(
                  Assets.images.bebungeFullColor.path,
                )),
            actions: [
              InkResponse(
                onTap: () async {
                  await UXlaunchUrl(_url);
                },
                child: Icon(
                  Icons.share,
                  size: UXConstants.kIconsM,
                ),
              ),
              SizedBox(width: UXConstants.kPaddingXL),
            ],
          ),
          body: Builder(builder: (context) {
            return BlocConsumer<BeritaDetailBloc, BeritaDetailState>(
              listener: (C, S) {
                S.whenOrNull(
                  loaded: (data) {
                    setState(() {
                      _url = data.url;
                    });
                  },
                );
              },
              builder: (C, S) {
                return S.maybeWhen(
                  orElse: () => SizedBox(),
                  loading: () => UXLoading(),
                  loaded: (data) => SingleChildScrollView(
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        UXCacheNetworkImage(
                            imageUrl: data.img ?? "", fit: BoxFit.cover),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: UXConstants.kPaddingXL,
                              vertical: UXConstants.kPaddingM),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //ANCHOR - Tag Berita
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: UXConstants.kPaddingM,
                                        vertical: 2),
                                    decoration: BoxDecoration(
                                        color: UXAppColors.yellow),
                                    child: Text(
                                      'Umum',
                                      style: TextStyle(
                                          fontSize: UXConstants.kFontSizeS),
                                    ),
                                  ),
                                ),
                                //ANCHOR - Judul Berita
                                Text(
                                  data.judul ?? "",
                                  style: TextStyle(
                                      fontSize: UXConstants.kFontSizeL,
                                      height: 1.5,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(height: UXConstants.kPaddingS),
                                //ANCHOR - Sub Info
                                Row(
                                  children: [
                                    //ANCHOR - Tanggal
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today,
                                            size: UXConstants.kIconsXS),
                                        SizedBox(width: UXConstants.kPaddingXS),
                                        Text(
                                          convertUTCtoDate(data.tgl ?? ""),
                                          style: TextStyle(
                                              fontSize: UXConstants.kFontSizeS),
                                        )
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    //view
                                    // Row(
                                    //   children: [
                                    //     Icon(Icons.remove_red_eye_sharp,
                                    //         size: UXConstants.kIconsXS),
                                    //     SizedBox(width: UXConstants.kPaddingXS),
                                    //     Text(
                                    //       '100 dibaca',
                                    //       style: TextStyle(fontSize: UXConstants.kFontSizeXS),
                                    //     )
                                    //   ],
                                    // )
                                    Row(
                                      children: [
                                        Icon(Icons.person,
                                            size: UXConstants.kIconsXS),
                                        SizedBox(width: UXConstants.kPaddingXS),
                                        Text(
                                          data.author ?? "",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: UXConstants.kFontSizeS),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: UXConstants.kPaddingM),
                                HtmlWidget(
                                  data.isi ?? "",
                                ),
                                SizedBox(height: UXConstants.kPaddingXL),
                              ]),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          })),
    );
  }
}
