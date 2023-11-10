import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/bebeli_detail/bloc/bebeli_added_bloc.dart';
import 'package:bebunge/src/features/bebeli_keranjang.dart/bloc/bebeli_delete_cart_bloc.dart';
import 'package:bebunge/src/features/bebeli_keranjang.dart/bloc/bebeli_keranjang_bloc.dart';
import 'package:bebunge/src/features/check_out/view/check_out.dart';
import 'package:bebunge/src/widgets/button/button_custom.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money2/money2.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../widgets/common/ux_loading.dart';
import '../widget/cart_card.dart';

class BebeliKeranjang extends StatefulWidget {
  const BebeliKeranjang({super.key});

  @override
  State<BebeliKeranjang> createState() => _BebeliKeranjangState();
}

class _BebeliKeranjangState extends State<BebeliKeranjang> {
  void _refresh(BuildContext context) {
    context.read<BebeliKeranjangBloc>()..add(BebeliKeranjangEvent.started());
  }

  Future<String?> _checkTransaction() async {
    var pref = await SharedPreferences.getInstance();
    return pref.getString(UXConstants.kodeTransaksi);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              BebeliKeranjangBloc()..add(BebeliKeranjangEvent.started()),
        ),
        BlocProvider(
          create: (context) => BebeliDeleteCartBloc(),
        ),
        BlocProvider(
          create: (context) => BebeliAddedBloc(),
        )
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
              title: Text(
            'Keranjang',
            style: TextStyle(
                fontSize: UXConstants.kFontSizeXXL,
                fontWeight: FontWeight.w500,
                color: UXColors.grey_80),
          )),
          body: Builder(builder: (context) {
            return MultiBlocListener(
                listeners: [
                  BlocListener<BebeliDeleteCartBloc, BebeliDeleteCartState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        loaded: (data) {
                          _refresh(context);
                        },
                      );
                    },
                  ),
                  BlocListener<BebeliAddedBloc, BebeliAddedState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        loaded: (data) {
                          _refresh(context);
                        },
                      );
                    },
                  ),
                ],
                child: FutureBuilder(
                  future: _checkTransaction(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          UXSpacer(height: UXConstants.kPaddingM),
                          Expanded(
                            child: BlocBuilder<BebeliKeranjangBloc,
                                BebeliKeranjangState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () => SizedBox(),
                                  loading: () => UXLoading(),
                                  loaded: (data) => ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) => CartCard(
                                            price: data.data[index].price,
                                            nameProduk:
                                                data.data[index].namaProduk,
                                            image: data.data[index].gambar,
                                            quantity: data.data[index].qty,
                                            onDelete: () {
                                              context
                                                  .read<BebeliDeleteCartBloc>()
                                                ..add(BebeliDeleteCartEvent
                                                    .started(
                                                        idProduct: data
                                                            .data[index]
                                                            .idProduk
                                                            .toString()));
                                            },
                                            onEdit: (p0) {
                                              EasyDebounce.debounce('search',
                                                  Duration(milliseconds: 1000),
                                                  () {
                                                context.read<BebeliAddedBloc>()
                                                  ..add(
                                                      BebeliAddedEvent.started(
                                                          idProduct: data
                                                              .data[index]
                                                              .idProduk
                                                              .toString(),
                                                          qty: p0.toString()));
                                              });
                                            },
                                          ),
                                      separatorBuilder: (context, index) =>
                                          Divider(
                                              color: UXColors.grey_20,
                                              thickness: 5),
                                      itemCount: data.data.length),
                                );
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: UXColors.defaultScaffoldBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, -1),
                                    spreadRadius: -9,
                                    blurRadius: 10,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  )
                                ]),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25, top: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Total Payment',
                                          style: TextStyle(
                                              fontSize: UXConstants.kFontSizeM,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        BlocBuilder<BebeliKeranjangBloc,
                                            BebeliKeranjangState>(
                                          builder: (context, state) {
                                            return Text(
                                              Money.fromNumWithCurrency(
                                                state.maybeWhen(
                                                      orElse: () => 0,
                                                      loaded: (data) =>
                                                          data.nilai,
                                                    ) ??
                                                    0,
                                                Currency.create('IDR', 2,
                                                    country: 'Indonesia',
                                                    symbol: 'Rp',
                                                    invertSeparators: true,
                                                    pattern: 'S###.###',
                                                    unit: 'rupiah'),
                                              ).toString(),
                                              style: TextStyle(
                                                  fontSize:
                                                      UXConstants.kFontSizeL,
                                                  fontWeight: FontWeight.w700,
                                                  color: UXAppColors.primary),
                                            );
                                          },
                                        ),
                                      ]),
                                ),
                                UXSpacer(height: 20),
                                BlocBuilder<BebeliKeranjangBloc,
                                    BebeliKeranjangState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                        orElse: () => SizedBox(),
                                        loading: () => Center(
                                            child: CircularProgressIndicator()),
                                        loaded: (data) => Container(
                                              height: 50,
                                              padding: EdgeInsetsDirectional
                                                  .symmetric(horizontal: 20),
                                              child: UXButtonCustom(
                                                onPressed: () {
                                                  pushNewScreen(context,
                                                      screen: CheckOut(data));
                                                },
                                                title: 'Check Out',
                                                withHorizontalPadding: true,
                                                fontSize:
                                                    UXConstants.kFontSizeL,
                                                backgroundColor:
                                                    UXAppColors.primary,
                                                borderShape:
                                                    ContinuousRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusDirectional
                                                                .circular(30)),
                                              ),
                                            ));
                                  },
                                ),
                                UXSpacer(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Container(
                          child: Center(
                              child: Text('Tidak ada transaksi terbaru')));
                    }
                  },
                ));
          }),
        ),
      ),
    );
  }
}
