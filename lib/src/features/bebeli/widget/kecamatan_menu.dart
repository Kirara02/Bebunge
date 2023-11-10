import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/common/ux_spacer.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../bloc/filter_kecamatan_bloc.dart';

class KecamatanMenu extends StatefulWidget {
  const KecamatanMenu({super.key});

  @override
  State<KecamatanMenu> createState() => _KecamatanMenuState();
}

class _KecamatanMenuState extends State<KecamatanMenu> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FilterKecamatanBloc()..add(FilterKecamatanEvent.started()),
      child: Builder(builder: (context) {
        return DraggableScrollableSheet(
            maxChildSize: 0.9,
            expand: false,
            builder: (context, scrollController) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Kecamatan",
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
                          hintText: 'Cari Kecamatan',
                          onFieldSubmitted: (value) {
                            context.read<FilterKecamatanBloc>()
                              ..add(FilterKecamatanEvent.started(
                                  seachText: _searchController.text));
                            hideKeyboard(context);
                          },
                          onChanged: (value) {},
                        ),
                      ),
                      UXSpacer(height: UXConstants.kPaddingL),
                      BlocBuilder<FilterKecamatanBloc, FilterKecamatanState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                              orElse: () => SizedBox(),
                              loading: () =>
                                  Center(child: CircularProgressIndicator()),
                              loaded: (data) => Expanded(
                                    child: ListView.separated(
                                        controller: scrollController,
                                        shrinkWrap: true,
                                        physics: BouncingScrollPhysics(),
                                        // shrinkWrap: true,
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
