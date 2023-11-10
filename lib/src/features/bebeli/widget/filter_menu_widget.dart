import 'package:bebunge/src/features/bebeli/bloc/filter_toko_bloc.dart';
import 'package:bebunge/src/features/bebeli/cubit/bebeli_params_cubit.dart';
import 'package:bebunge/src/features/bebeli/widget/header_filter_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/button/button_custom.dart';
import '../../../widgets/common/ux_spacer.dart';
import '../bloc/filter_kecamatan_bloc.dart';
import '../bloc/filter_kelurahan_bloc.dart';
import 'kecamatan_menu.dart';
import 'kelurahan_menu.dart';
import 'toko_menu.dart';

class FilterMenuWidget extends StatefulWidget {
  const FilterMenuWidget({super.key});

  @override
  State<FilterMenuWidget> createState() => _FilterMenuWidgetState();
}

class _FilterMenuWidgetState extends State<FilterMenuWidget> {
  ValueNotifier<bool> _showSubmit = ValueNotifier(false);
  String? _kecId;
  String? _kelId;
  String? _tokoId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                FilterKecamatanBloc()..add(FilterKecamatanEvent.started()),
          ),
          BlocProvider(
            create: (context) => FilterKelurahanBloc()
              ..add(FilterKelurahanEvent.started(kecId: '3216022')),
          ),
          BlocProvider(
              create: (context) =>
                  FilterTokoBloc()..add(FilterTokoEvent.started()))
        ],
        child: DraggableScrollableSheet(
            expand: false,
            maxChildSize: 0.9,
            builder: (context, scroll) {
              return ListView(
                // physics: BouncingScrollPhysics(),
                // shrinkWrap: true,
                padding: EdgeInsets.all(20),
                controller: scroll,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Filter',
                        style: TextStyle(
                            fontSize: UXConstants.kFontSizeL,
                            fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                        onPressed: () {
                          context.read<BebeliParamsCubit>().addParams(
                              kecamatan: '',
                              kelurahan: '',
                              toko: '',
                              kategori: '',
                              sub: '');
                        },
                        child: Text(
                          "Reset",
                          style: TextStyle(
                              fontSize: UXConstants.kFontSizeL,
                              color: UXAppColors.primary,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  //ANCHOR - Kecamatan Filter
                  UXSpacer(height: 30),
                  HeaderFilterMenu(
                    headerTile: 'Kecamatan',
                    onTap: () {
                      _kecamatanMenu(context).then((id) {
                        if (id != null) {
                          context.read<FilterKecamatanBloc>()
                            ..add(FilterKecamatanEvent.started(id: id));
                          context.read<BebeliParamsCubit>()
                            ..addParams(kecamatan: id);
                          context.read<FilterKelurahanBloc>()
                            ..add(FilterKelurahanEvent.started(kecId: id));
                          setState(() {
                            _kecId = id;
                            _showSubmit.value = true;
                          });
                        }
                      });
                    },
                  ),
                  UXSpacer(height: 10),

                  BlocBuilder<FilterKecamatanBloc, FilterKecamatanState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                          orElse: () => SizedBox(),
                          loading: () =>
                              Center(child: CircularProgressIndicator()),
                          loaded: (data) {
                            return Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                verticalDirection: VerticalDirection.down,
                                children: List.generate(
                                    data.length <= 5 ? data.length : 5,
                                    (index) => GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _kecId = data[index].id;
                                              _showSubmit.value = true;
                                            });

                                            context
                                                .read<BebeliParamsCubit>()
                                                .addParams(
                                                    kecamatan: data[index].id);
                                            context.read<FilterKelurahanBloc>()
                                              ..add(
                                                  FilterKelurahanEvent.started(
                                                      kecId: data[index].id));
                                          },
                                          child: Container(
                                            height: 35,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadiusDirectional
                                                        .circular(10),
                                                border: Border.all(
                                                    color: _kecId ==
                                                            data[index].id
                                                        ? UXAppColors.primary
                                                        : UXColors.grey_60)),
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: Text(
                                                  textAlign: TextAlign.center,
                                                  data[index].text ?? "",
                                                  style: TextStyle(
                                                      fontSize: UXConstants
                                                          .kFontSizeXS,
                                                      color: _kecId ==
                                                              data[index].id
                                                          ? UXAppColors.primary
                                                          : UXColors.grey_80)),
                                            ),
                                          ),
                                        )));
                          });
                    },
                  ),
                  UXSpacer(height: 30),
                  //ANCHOR - Keluraham Filter
                  HeaderFilterMenu(
                    headerTile: 'Kelurahan',
                    onTap: () {
                      _kelurahanMenu(context).then((id) {
                        if (id != null) {
                          context.read<FilterKelurahanBloc>()
                            ..add(FilterKelurahanEvent.started(
                                kecId: _kecId, kelId: id));
                          BlocProvider.of<BebeliParamsCubit>(context)
                              .addParams(kelurahan: id);
                          setState(() {
                            _kelId = id;
                            _showSubmit.value = true;
                          });
                        }
                      });
                    },
                  ),
                  UXSpacer(height: 10),
                  BlocBuilder<FilterKelurahanBloc, FilterKelurahanState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => SizedBox(),
                        loading: () =>
                            Center(child: CircularProgressIndicator()),
                        loaded: (data) {
                          return Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              verticalDirection: VerticalDirection.down,
                              children: List.generate(
                                  data.length <= 5 ? data.length : 5,
                                  (index) => GestureDetector(
                                        onTap: () {
                                          BlocProvider.of<BebeliParamsCubit>(
                                                  context)
                                              .addParams(
                                                  kelurahan: data[index].id);
                                          setState(() {
                                            _kelId = data[index].id;
                                            _showSubmit.value = true;
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadiusDirectional
                                                      .circular(10),
                                              border: Border.all(
                                                  color:
                                                      data[index].id == _kelId
                                                          ? UXAppColors.primary
                                                          : UXColors.grey_60)),
                                          child: FittedBox(
                                            fit: BoxFit.cover,
                                            child: Text(
                                                textAlign: TextAlign.center,
                                                data[index].text ?? "",
                                                style: TextStyle(
                                                    color: data[index].id ==
                                                            _kelId
                                                        ? UXAppColors.primary
                                                        : UXColors.grey_80,
                                                    fontSize: UXConstants
                                                        .kFontSizeXS)),
                                          ),
                                        ),
                                      )));
                        },
                      );
                    },
                  ),
                  UXSpacer(height: 30),
                  HeaderFilterMenu(
                    headerTile: 'Toko',
                    onTap: () {
                      _tokoMenu(context).then((id) {
                        if (id != null) {
                          context.read<FilterTokoBloc>()
                            ..add(FilterTokoEvent.started(id: id[0]));
                          BlocProvider.of<BebeliParamsCubit>(context)
                              .addParams(toko: id[0]);
                          setState(() {
                            _tokoId = id[0];
                            _showSubmit.value = true;
                          });
                        }
                      });
                    },
                  ),
                  UXSpacer(height: 10),

                  BlocBuilder<FilterTokoBloc, FilterTokoState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                          orElse: () => SizedBox(),
                          loading: () =>
                              Center(child: CircularProgressIndicator()),
                          loaded: (data) => Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              verticalDirection: VerticalDirection.down,
                              children: List.generate(
                                  data.length,
                                  (index) => GestureDetector(
                                        onTap: () {
                                          BlocProvider.of<BebeliParamsCubit>(
                                                  context)
                                              .addParams(toko: data[index].id);
                                          setState(() {
                                            _tokoId = data[index].id!;
                                            _showSubmit.value = true;
                                          });
                                        },
                                        child: Container(
                                          height: 35,
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadiusDirectional
                                                      .circular(10),
                                              border: Border.all(
                                                  color:
                                                      data[index].id == _tokoId
                                                          ? UXAppColors.primary
                                                          : UXColors.grey_60)),
                                          child: FittedBox(
                                            fit: BoxFit.cover,
                                            child: Text(
                                                textAlign: TextAlign.center,
                                                data[index].text ?? "",
                                                style: TextStyle(
                                                    color: data[index].id ==
                                                            _tokoId
                                                        ? UXAppColors.primary
                                                        : UXColors.grey_80,
                                                    fontSize: UXConstants
                                                        .kFontSizeXS)),
                                          ),
                                        ),
                                      ))));
                    },
                  ),

                  UXSpacer(
                    height: UXConstants.kPaddingL,
                  ),
                  ValueListenableBuilder<bool>(
                    valueListenable: _showSubmit,
                    builder: (context, value, _) {
                      if (value) {
                        return UXButtonCustom(
                          verticalPadding: 8,
                          height: 40,
                          title: 'Terapkan',
                          fontSize: UXConstants.kFontSizeL,
                          backgroundColor: UXAppColors.primary,
                          titleColor: UXColors.white,
                          enabled: true,
                          borderShape: ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20)),
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                        );
                      } else {
                        return SizedBox(
                          height: 40,
                        );
                      }
                    },
                  )
                ],
              );
            }));
  }

  Future _kecamatanMenu(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(25), topEnd: Radius.circular(25))),
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) {
        return KecamatanMenu();
      },
    );
  }

  Future _kelurahanMenu(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(25), topEnd: Radius.circular(25))),
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) {
        return KelurahanMenu();
      },
    );
  }

  Future _tokoMenu(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(25), topEnd: Radius.circular(25))),
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) {
        return TokoMenu();
      },
    );
  }

  @override
  void dispose() {
    _showSubmit.dispose();
    super.dispose();
  }
}
