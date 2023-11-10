import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../network/model/berita/berita_detail.dart';
import '../../../utils/date_utils.dart';
import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/common/empty_list.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../../berita_detail/view/berita_detail.dart';
import '../bloc/berita_category_bloc.dart';
import '../bloc/berita_filter_bloc.dart';
import '../cubit/berita_params_cubit.dart';
import '../widget/card_berita.dart';
import '../widget/category_list_shimmer.dart';
import '../widget/category_menu.dart';
import 'berita_body.dart';

class BeritaSearch extends StatefulWidget {
  const BeritaSearch({this.refresh = false, this.searchKey, super.key});
  final String? searchKey;
  final bool refresh;

  @override
  State<BeritaSearch> createState() => _BeritaSearchState();
}

class _BeritaSearchState extends State<BeritaSearch> {
  TextEditingController searchController = TextEditingController();
  ValueNotifier<String> textSearch = ValueNotifier('');
  final PagingController<int, BeritaDetailDto> _pagingCtrl =
      PagingController(firstPageKey: 1, invisibleItemsThreshold: 3);
  int? kat;

  void fetchPage(BuildContext context) {
    final bloc = context.read<BeritaParamsCubit>();
    _pagingCtrl.addPageRequestListener((pageKey) {
      bloc.addParams(page: pageKey.toString());
      BlocProvider.of<BeritaFilterBloc>(context)
        ..add(BeritaFilterEvent.started(bloc.state));
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
          // backgroundColor: UXColors.white,
          automaticallyImplyLeading: false,
          leading: Container(
              margin: EdgeInsets.only(left: 15),
              child: Image.asset(
                Assets.images.bebungeFullColor.path,
              )),
          leadingWidth: 120,
          centerTitle: true,
          //ANCHOR - Search Bar
          title: Builder(builder: (context) {
            return Container(
                height: 40,
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                child: UXInputCustom(
                    controller: searchController,
                    textInputAction: TextInputAction.search,
                    onFieldSubmitted: (value) {
                      context
                          .read<BeritaParamsCubit>()
                          .addParams(search: value);
                      _pagingCtrl.refresh();
                      textSearch.value = value;
                      // searchController.clear();
                      hideKeyboard(context);
                    },
                    // value: searchController.value.text,
                    onChanged: (value) {},
                    hintText: 'Cari Berita',
                    suffixIcon: ValueListenableBuilder(
                      valueListenable: textSearch,
                      builder: (context, value, child) =>
                          textSearch.value.isEmpty
                              ? Icon(Icons.search, color: UXColors.grey_80)
                              : InkResponse(
                                  containedInkWell: false,
                                  onTap: () {
                                    setState(() {
                                      searchController.value =
                                          TextEditingValue();
                                      textSearch.value = '';
                                    });
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: UXAppColors.danger,
                                  ),
                                ),
                    )));
          }),
        ),
        body: BlocListener<BeritaFilterBloc, BeritaFilterState>(
          listener: (context, state) {
            state.whenOrNull(
              loaded: (data, currentPage, nextPage) {
                if (nextPage) {
                  _pagingCtrl.appendPage(data, currentPage + 1);
                } else {
                  _pagingCtrl.appendLastPage(data);
                }
              },
            );
          },
          child: Builder(builder: (context) {
            return ValueListenableBuilder(
              valueListenable: textSearch,
              builder: (context, value, child) {
                return value.isNotEmpty
                    ? Column(
                        children: [
                          SizedBox(height: UXConstants.kPaddingS),
                          BlocBuilder<BeritaCategoryBloc, BeritaCategoryState>(
                            builder: (context, S) {
                              return S.maybeWhen(
                                orElse: () => SizedBox(),
                                loading: () => CategoryListShimmer(),
                                loaded: (data) => CategoryMenu(
                                  categories: data,
                                  paging: _pagingCtrl,
                                ),
                              );
                            },
                          ),
                          SizedBox(height: UXConstants.kPaddingM),
                          Expanded(
                            child:
                                PagedListView<int, BeritaDetailDto>.separated(
                                    padding: EdgeInsetsDirectional.symmetric(
                                        horizontal: 20),
                                    pagingController: _pagingCtrl,
                                    separatorBuilder: (context, index) =>
                                        Divider(),
                                    builderDelegate: PagedChildBuilderDelegate(
                                      noItemsFoundIndicatorBuilder: (context) =>
                                          EmptyList(
                                              size: 200,
                                              title:
                                                  'Berita dengan kata kunci terkait tidak ditemukan'),
                                      itemBuilder: (context, item, index) =>
                                          cardBeritaGeneral(
                                        context,
                                        image: item.img,
                                        tag: item.kategori,
                                        title: item.judul,
                                        date: convertUTCtoDate(item.tgl),
                                        goTo: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BeritaDetail(
                                                      beritaId:
                                                          item.id.toString()),
                                            )),
                                        shared: () => UXlaunchUrl(item.url),
                                      ),
                                    )),
                          ),
                        ],
                      )
                    : BeritaBody();
              },
            );
          }),
        ),
      )),
    );
  }

  @override
  void dispose() {
    _pagingCtrl.dispose();
    textSearch.dispose();
    searchController.dispose();
    super.dispose();
  }
}
