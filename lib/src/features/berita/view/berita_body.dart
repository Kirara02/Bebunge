import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shimmer/shimmer.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../network/model/berita/berita_detail.dart';
import '../../../network/model/berita/filter_params.dart';
import '../../../utils/date_utils.dart';
import '../../../widgets/images/cache_network.dart';
import '../../../widgets/wrapper/custom_wrapper.dart';
import '../../berita_detail/view/berita_detail.dart';
import '../bloc/berita_filter_bloc.dart';
import '../widget/card_berita.dart';

class BeritaBody extends StatefulWidget {
  const BeritaBody({super.key});

  @override
  State<BeritaBody> createState() => _BeritaBodyState();
}

class _BeritaBodyState extends State<BeritaBody> {
  final PagingController<int, BeritaDetailDto> _pagingController =
      PagingController(firstPageKey: 1, invisibleItemsThreshold: 3);
  TextEditingController searchController = TextEditingController();
  BeritaDetailDto? beritaTerkiniTerbaru;
  void fetchPage(BuildContext context) {
    _pagingController.addPageRequestListener((pageKey) {
      BlocProvider.of<BeritaFilterBloc>(context)
        ..add(BeritaFilterEvent.started(FilterParams(
          limit: '10',
          kategori: '',
          search: '',
          page: pageKey.toString(),
        )));
    });
  }

  @override
  void initState() {
    fetchPage(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.sync(() => _pagingController.refresh()),
      child: BlocListener<BeritaFilterBloc, BeritaFilterState>(
          listener: (context, state) {
            state.whenOrNull(
              loaded: (data, currentPage, nextPage) {
                if (currentPage == 1) {
                  setState(() {
                    beritaTerkiniTerbaru = data[0];
                  });
                }
                if (nextPage) {
                  _pagingController.appendPage(data, currentPage + 1);
                } else {
                  _pagingController.appendLastPage(data);
                }
              },
            );
          },
          child: initialScreen(
            context,
            _pagingController,
            beritaTerkiniTerbaru,
          )),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    searchController.dispose();
    super.dispose();
  }
}

Widget initialScreen(
  BuildContext context,
  PagingController<int, BeritaDetailDto> pagingController,
  BeritaDetailDto? data,
) {
  return Column(
    children: [
      InkResponse(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    BeritaDetail(beritaId: data!.id.toString()),
              ));
        },
        child: SizedBox(
          height: 240,
          child: data != null
              ? Stack(
                  children: [
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter * 1.1,
                          colors: [Colors.transparent, Colors.black],
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.darken,
                      child: UXCacheNetworkImage(
                          fit: BoxFit.cover, imageUrl: data.img!),
                    ),
                    Positioned.fill(
                      bottom: 20,
                      left: 20,
                      right: 0,
                      top: 0,
                      child: Flex(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        direction: Axis.vertical,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FittedBox(
                            child: Container(
                                height: 19,
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    horizontal: UXConstants.kPaddingM,
                                    vertical: 0),
                                decoration: BoxDecoration(
                                  color: UXAppColors.yellow,
                                ),
                                child: Text(
                                  data.kategori ?? "",
                                  style: TextStyle(
                                      fontSize: UXConstants.kFontSizeS),
                                )),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Flexible(
                            child: Text(data.judul ?? '',
                                // overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: UXConstants.kFontSizeL,
                                    color: UXColors.white,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              : Shimmer.fromColors(
                  child: Container(
                    color: UXColors.white,
                  ),
                  baseColor: UXColors.shimmerBaseColor,
                  highlightColor: UXColors.shimmerHighlightColor),
        ),
      ),
      Expanded(
          child: CustomWrapper(
        name: LocaleKeys.news_latest_news.tr(),
        titleSize: UXConstants.kFontSizeM,
        paddingWrapper:
            EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
        child: Expanded(
          child: PagedListView<int, BeritaDetailDto>.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            pagingController: pagingController,
            builderDelegate: PagedChildBuilderDelegate(
                firstPageProgressIndicatorBuilder: (context) => UXLoading(),
                itemBuilder: (context, item, index) {
                  return cardBeritaGeneral(
                    context,
                    date: convertUTCtoDate(item.tgl),
                    image: item.img,
                    title: item.judul,
                    tag: item.kategori,
                    shared: () {
                      UXlaunchUrl(item.url);
                    },
                    goTo: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BeritaDetail(
                                    beritaId: item.id.toString(),
                                  )));
                    },
                  );
                }),
            separatorBuilder: (context, index) => Divider(),
          ),
        ),
      ))
    ],
  );
}
