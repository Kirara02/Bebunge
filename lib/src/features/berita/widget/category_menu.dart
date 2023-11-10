import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../network/model/berita/berita_category.dart';
import '../../../network/model/berita/berita_detail.dart';
import '../../../widgets/button/button_custom.dart';
import '../cubit/berita_params_cubit.dart';

class CategoryMenu extends StatefulWidget {
  const CategoryMenu({this.categories, this.paging, super.key});
  final List<BeritaCategory>? categories;
  final PagingController<int, BeritaDetailDto>? paging;

  @override
  State<CategoryMenu> createState() => _CategoryMenuState();
}

class _CategoryMenuState extends State<CategoryMenu> {
  int? index;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          height: 24,
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount:
                  widget.categories != null ? widget.categories!.length : 8,
              separatorBuilder: (context, index) => SizedBox(width: 5),
              itemBuilder: (context, index) => UXButtonCustom(
                    onPressed: () {
                      context.read<BeritaParamsCubit>().addParams(
                          kategori: widget.categories![index].id.toString());
                      widget.paging!.refresh();
                    },
                    height: 32,
                    borderShape: StadiumBorder(
                        side: BorderSide(color: UXAppColors.biru1)),
                    withHorizontalPadding: true,
                    padding: 1,
                    backgroundColor: UXColors.white,
                    child: Text(
                        widget.categories != null
                            ? widget.categories![index].nama ?? ''
                            : "",
                        style: TextStyle(
                            color: UXAppColors.biru2,
                            fontSize: UXConstants.kFontSizeXS)),
                  ))),
    );
  }
}
