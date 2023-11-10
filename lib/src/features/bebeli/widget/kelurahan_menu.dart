import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/common/ux_spacer.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../bloc/filter_kelurahan_bloc.dart';

class KelurahanMenu extends StatefulWidget {
  const KelurahanMenu({this.kecId, super.key});
  final String? kecId;

  @override
  State<KelurahanMenu> createState() => _KelurahanMenuState();
}

class _KelurahanMenuState extends State<KelurahanMenu> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterKelurahanBloc()
        ..add(FilterKelurahanEvent.started(kecId: widget.kecId)),
      child: Builder(builder: (context) {
        return DraggableScrollableSheet(
            expand: false,
            maxChildSize: 0.9,
            builder: (context, scrollController) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Kelurahan",
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
                          textInputAction: TextInputAction.search,
                          hintText: 'Cari Kelurahan',
                          onFieldSubmitted: (value) {
                            context.read<FilterKelurahanBloc>()
                              ..add(FilterKelurahanEvent.started(
                                  search: _searchController.text));
                            hideKeyboard(context);
                          },
                          onChanged: (value) {},
                        ),
                      ),
                      UXSpacer(height: UXConstants.kPaddingL),
                      BlocBuilder<FilterKelurahanBloc, FilterKelurahanState>(
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
                                                Navigator.pop(
                                                    context, data[index].id);
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
