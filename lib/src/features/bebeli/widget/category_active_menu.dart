import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/config/ux_screen.dart';
import 'package:bebunge/src/features/bebeli/bloc/filter_category_bloc.dart';
import 'package:bebunge/src/features/bebeli/widget/sub_category_active_menu.dart';
import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:bebunge/src/widgets/images/cache_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../cubit/bebeli_params_cubit.dart';

class CategoryActiveMenu extends StatefulWidget {
  const CategoryActiveMenu({super.key});

  @override
  State<CategoryActiveMenu> createState() => _CategoryActiveMenuState();
}

class _CategoryActiveMenuState extends State<CategoryActiveMenu> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FilterCategoryBloc()..add(FilterCategoryEvent.started()),
      child: Builder(builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              UXSpacer(height: 20),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: UXScreens.width,
                child: UXInputCustom(
                  textInputAction: TextInputAction.search,
                  prefixIcon: Icons.search,
                  controller: _searchController,
                  onFieldSubmitted: (p0) {
                    if (_searchController.text.isNotEmpty) {
                      context.read<FilterCategoryBloc>()
                        ..add(FilterCategoryEvent.started(text: p0));
                    }
                    hideKeyboard(context);
                  },
                  hintText: 'Cari Berdasarkan Kategori',
                  onChanged: (value) {},
                ),
              ),
              // UXSpacer(height: 20),
              Builder(builder: (context) {
                return Expanded(
                    child: BlocBuilder<FilterCategoryBloc, FilterCategoryState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () => SizedBox(),
                    loading: () => UXLoading(),
                    loaded: (data) => ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        padding: EdgeInsets.all(20),
                        itemBuilder: (context, index) => _categoryCard(
                              data[index].gambar,
                              text: data[index].text,
                              onTap: () {
                                context.read<BebeliParamsCubit>().addParams(
                                      kategori: data[index].id.toString(),
                                    );
                                Navigator.pop(context, true);
                              },
                            ),
                        separatorBuilder: (context, index) => UXSpacer(),
                        itemCount: data.length),
                  ),
                ));
              })
            ],
          ),
        );
      }),
    );
  }

  _categoryCard(String? imageUrl, {String? text, VoidCallback? onTap}) {
    return Card(
      elevation: 2,
      child: ListTile(
        contentPadding: EdgeInsets.all(8),
        tileColor: UXColors.grey_20,
        onTap: onTap,
        leading: SizedBox(
          height: 60,
          width: 60,
          child:
              UXCacheNetworkImage(imageUrl: imageUrl ?? '', fit: BoxFit.cover),
        ),
        title: Text(
          text ?? '',
        ),
        titleTextStyle: TextStyle(
            fontSize: UXConstants.kFontSizeL,
            color: UXColors.grey_80,
            fontWeight: FontWeight.w500),
      ),
    );
  }

  

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
