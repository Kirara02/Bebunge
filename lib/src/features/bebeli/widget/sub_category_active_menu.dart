import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/config/ux_screen.dart';
import 'package:bebunge/src/features/bebeli/cubit/bebeli_params_cubit.dart';
import 'package:bebunge/src/widgets/common/empty_list.dart';
import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../bloc/filter_sub_category_bloc.dart';

class SubCategoryActiveMenu extends StatefulWidget {
  const SubCategoryActiveMenu({this.categoryId = '', super.key});
  final String categoryId;

  @override
  State<SubCategoryActiveMenu> createState() => _SubCategoryActiveMenuState();
}

class _SubCategoryActiveMenuState extends State<SubCategoryActiveMenu> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FilterSubCategoryBloc()..add(FilterSubCategoryEvent.started()),
        ),
      ],
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
                      context.read<FilterSubCategoryBloc>()
                        ..add(FilterSubCategoryEvent.started(text: p0));
                    }
                    hideKeyboard(context);
                  },
                  hintText: 'Cari Berdasarkan Sub Kategori',
                  onChanged: (value) {},
                ),
              ),
              // UXSpacer(height: 20),
              Builder(builder: (context) {
                return Expanded(
                    child: BlocBuilder<FilterSubCategoryBloc,
                        FilterSubCategoryState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () => SizedBox(),
                    loading: () => UXLoading(),
                    loaded: (data) => data.isNotEmpty
                        ? ListView.separated(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.all(20),
                            itemBuilder: (context, index) => _categoryCard(
                                  text: data[index].text,
                                  onTap: () {
                                    context.read<BebeliParamsCubit>().addParams(
                                        sub: data[index].id.toString());
                                    Navigator.pop(context, true);
                                  },
                                ),
                            separatorBuilder: (context, index) => UXSpacer(),
                            itemCount: data.length)
                        : Center(
                            child: EmptyList(
                            size: 200,
                            title: 'Sub kategori tidak ada',
                          )),
                  ),
                ));
              })
            ],
          ),
        );
      }),
    );
  }

  _categoryCard({String? text, VoidCallback? onTap}) {
    return Card(
      elevation: 2,
      child: ListTile(
        tileColor: UXColors.grey_20,
        onTap: onTap,
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
