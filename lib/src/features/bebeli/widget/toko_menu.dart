import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/common/ux_spacer.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../bloc/filter_toko_bloc.dart';

class TokoMenu extends StatefulWidget {
  const TokoMenu({this.kecId, super.key});
  final String? kecId;

  @override
  State<TokoMenu> createState() => _TokoMenuState();
}

class _TokoMenuState extends State<TokoMenu> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterTokoBloc()..add(FilterTokoEvent.started()),
      child: Builder(builder: (context) {
        return DraggableScrollableSheet(
            expand: false,
            maxChildSize: 0.9,
            builder: (context, scrollController) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Toko",
                        style: TextStyle(
                            fontSize: UXConstants.kFontSizeL,
                            fontWeight: FontWeight.w600),
                      ),
                      UXSpacer(height: 20),
                      SizedBox(
                        height: 40,
                        child: UXInputCustom(
                          prefixIcon: Icons.search,
                          controller: _searchController,
                          hintText: 'Cari Toko',
                          onChanged: (value) {
                            EasyDebounce.debounce(
                                'search', Duration(milliseconds: 1000), () {
                              context.read<FilterTokoBloc>()
                                ..add(FilterTokoEvent.started(
                                    toko: _searchController.text));
                              hideKeyboard(context);
                            });
                          },
                        ),
                      ),
                      UXSpacer(height: UXConstants.kPaddingL),
                      BlocBuilder<FilterTokoBloc, FilterTokoState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                              orElse: () => SizedBox(),
                              loading: () => Expanded(
                                  child: Center(
                                      child: CircularProgressIndicator())),
                              loaded: (data) => Expanded(
                                    child: ListView.separated(
                                        controller: scrollController,
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: data.length,
                                        separatorBuilder: (context, index) =>
                                            Divider(
                                              color: UXColors.grey_60,
                                            ),
                                        itemBuilder: (context, index) =>
                                            ListTile(
                                              onTap: () {
                                                Navigator.pop(context, [
                                                  data[index].id,
                                                ]);
                                              },
                                              title:
                                                  Text(data[index].text ?? ""),
                                            )),
                                  ));
                        },
                      ),
                    ],
                  ),
                ));
      }),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
