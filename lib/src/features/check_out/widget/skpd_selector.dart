import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/check_out/bloc/skpd_bloc.dart';
import 'package:bebunge/src/widgets/common/ux_loading.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/forms/ux_input_custom.dart';

class SkpdSelector extends StatefulWidget {
  const SkpdSelector({super.key});

  @override
  State<SkpdSelector> createState() => _SkpdSelectorState();
}

class _SkpdSelectorState extends State<SkpdSelector> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SkpdBloc()..add(SkpdEvent.started()),
      child: Builder(builder: (context) {
        return Container(
          height: 500,
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Pilih SKPD',
                style: TextStyle(
                    fontSize: UXConstants.kFontSizeM,
                    fontWeight: FontWeight.w600),
              ),
              UXSpacer(height: 10),
              SizedBox(
                height: 35,
                child: UXInputCustom(
                  prefixIcon: Icons.search,
                  textInputAction: TextInputAction.search,
                  controller: _searchController,
                  hintText: 'Cari SKPD',
                  onFieldSubmitted: (value) {
                    BlocProvider.of<SkpdBloc>(context)
                      ..add(SkpdEvent.started(skpd: value));
                    hideKeyboard(context);
                  },
                  onChanged: (value) {},
                ),
              ),
              UXSpacer(height: 20),
              BlocBuilder<SkpdBloc, SkpdState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => SizedBox(),
                      loading: () => UXLoading(),
                      loaded: (data) => Expanded(
                            child: ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Material(
                                      borderRadius: BorderRadius.circular(10),
                                      child: InkWell(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        onTap: () {
                                          Navigator.pop(
                                              context, data[index].id);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: UXColors.grey_60),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 8),
                                          child: Text(
                                              '${(index + 1).toString()}. ${data[index].text}',
                                              style: TextStyle(
                                                  fontSize:
                                                      UXConstants.kFontSizeM,
                                                  color: UXColors.grey_80)),
                                        ),
                                      ),
                                    ),
                                separatorBuilder: (context, index) =>
                                    Divider(color: UXColors.white, height: 10),
                                itemCount: data.length),
                          ));
                },
              )
            ],
          ),
        );
      }),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
