import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:bebunge/src/features/bebeli_detail/bloc/bebeli_added_bloc.dart';
import 'package:bebunge/src/features/bebeli_detail/bloc/bebeli_detail_bloc.dart';
import 'package:bebunge/src/features/bebeli_keranjang.dart/view/bebeli_keranjang.dart';
import 'package:bebunge/src/features/bebeli_keranjang.dart/widget/bbl_stock_button.dart';
import 'package:bebunge/src/features/shared/bebeli/bebeli_auth_bloc.dart';
import 'package:bebunge/src/utils/extention.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:money2/money2.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/button/button.dart';
import '../../../widgets/button/button_custom.dart';
import '../../../widgets/dialogs/ux_toast_wrapper.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../../../widgets/images/cache_network.dart';

class BebeliDetail extends StatefulWidget {
  const BebeliDetail({this.id, super.key});
  final String? id;

  @override
  State<BebeliDetail> createState() => _BebeliDetailState();
}

class _BebeliDetailState extends State<BebeliDetail> {
  int quantity = 1;
  int stock = 0;
  final _form = GlobalKey<FormState>();
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();
  bool valid_form = false;
  bool? isModalBottomSheetOpen;
  var pref = SharedPreferences.getInstance();
  transactionCode() async {}

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
              BebeliDetailBloc()..add(BebeliDetailEvent.started(id: widget.id)),
        ),
        BlocProvider(
          create: (context) => BebeliAddedBloc(),
        )
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light.copyWith(
            statusBarColor: UXColors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: BebeliKeranjang(),
                          type: PageTransitionType.rightToLeft));
                },
                icon: SvgPicture.asset(Assets.svgs.cart.path,
                    theme: SvgTheme(currentColor: UXColors.grey_60)),
                color: Colors.transparent,
              ),
              SizedBox(width: UXConstants.kPaddingM),
            ]),
            body: Builder(builder: (context) {
              return MultiBlocListener(
                listeners: [
                  BlocListener<BebeliAuthBloc, BebeliAuthState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        isAuthenticated: (data) {
                          BlocProvider.of<BebeliAddedBloc>(context)
                            ..add(BebeliAddedEvent.started(
                                idProduct: widget.id,
                                qty: quantity.toString()));
                        },
                        unAutheticated: () {
                          showModalLogin(context);
                        },
                        error: (error) {
                          error.whenOrNull(
                            unauthorisedRequest: (reason) {
                              UXToast.show(
                                  message: 'Password or Username invalid',
                                  backgroundColor: UXAppColors.danger);
                            },
                          );
                        },
                      );
                    },
                  ),
                  BlocListener<BebeliAddedBloc, BebeliAddedState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        loaded: (data) {
                          if (data.data['status'] == false) {
                            UXToast.show(
                                message: data.data['message'],
                                backgroundColor: UXAppColors.danger);
                            return;
                          }

                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: BebeliKeranjang(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        error: (error) {
                          error.whenOrNull(
                            notFound: (reason) {
                              UXToast.show(
                                  message:
                                      'Pedagang Berbeda, order hanya berlaku untuk satu pedagang',
                                  backgroundColor: UXAppColors.danger,
                                  toastGravity: ToastGravity.CENTER);
                            },
                            unauthorisedRequest: (reason) {
                              showModalLogin(context);
                            },
                          );
                        },
                      );
                    },
                  ),
                  BlocListener<BebeliDetailBloc, BebeliDetailState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        loaded: (data) {
                          setState(() {
                            stock = data.stok ?? 0;
                          });
                        },
                      );
                    },
                  )
                ],
                child: BlocBuilder<BebeliDetailBloc, BebeliDetailState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => SizedBox(),
                      loading: () => SizedBox(),
                      loaded: (data) => SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(children: [
                          SizedBox(
                            height: 206,
                            width: double.infinity,
                            child: UXCacheNetworkImage(
                                imageUrl: data.gambar ?? ""),
                          ),
                          SizedBox(height: UXConstants.kPaddingXL),
                          //ANCHOR - Title
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              data.namaProduk ?? "",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                          UXSpacer(height: 5),
                          //ANCHOR - Harga
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Builder(builder: (context) {
                              var diskon = double.tryParse(data.diskon ?? '0');
                              return diskon! > 0
                                  ? Text(
                                      Money.fromNumWithCurrency(
                                        data.hargaDiskon ?? 0,
                                        Currency.create('IDR', 2,
                                            country: 'Indonesia',
                                            symbol: 'Rp ',
                                            invertSeparators: true,
                                            pattern: 'S###.###',
                                            unit: 'rupiah'),
                                      ).toString(),
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: UXAppColors.primary,
                                          decoration: TextDecoration.none,
                                          decorationColor: UXAppColors.danger),
                                    )
                                  : Text(
                                      Money.fromNumWithCurrency(
                                        data.harga ?? 0,
                                        Currency.create('IDR', 2,
                                            country: 'Indonesia',
                                            symbol: 'Rp ',
                                            invertSeparators: true,
                                            pattern: 'S###.###',
                                            unit: 'rupiah'),
                                      ).toString(),
                                      style: TextStyle(
                                          fontSize: UXConstants.kFontSizeM,
                                          fontWeight: FontWeight.w700,
                                          color: UXColors.grey_80,
                                          decoration: TextDecoration.none,
                                          decorationColor: UXAppColors.danger),
                                    );
                            }),
                          ),
                          UXSpacer(
                            height: 5,
                          ),
                          Builder(builder: (context) {
                            var diskon = double.tryParse(data.diskon ?? '0');
                            return diskon! > 0
                                ? Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        alignment: Alignment.center,
                                        padding: EdgeInsetsDirectional.all(4),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: UXAppColors.gojekRed),
                                        child: Text('${(diskon).toString()}%',
                                            style: TextStyle(
                                              fontSize: UXConstants.kFontSizeXS,
                                              fontWeight: FontWeight.w700,
                                              color: UXAppColors.danger,
                                            )),
                                      ),
                                      UXSpacer(width: 4),
                                      Text(
                                        Money.fromNumWithCurrency(
                                          data.harga ?? 0,
                                          Currency.create('IDR', 2,
                                              country: 'Indonesia',
                                              symbol: 'Rp ',
                                              invertSeparators: true,
                                              pattern: 'S###.###',
                                              unit: 'rupiah'),
                                        ).toString(),
                                        style: TextStyle(
                                            fontSize: UXConstants.kFontSizeS,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(
                                                255, 181, 185, 191),
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor: UXColors.grey_40),
                                      ),
                                    ],
                                  )
                                : SizedBox();
                          }),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: RatingBar.builder(
                              maxRating: 5,
                              minRating: 0,
                              initialRating:
                                  double.tryParse(data.rate!)!.ceilToDouble(),
                              itemSize: UXConstants.kIconsM,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: UXAppColors.orange,
                              ),
                              onRatingUpdate: (value) {},
                            ),
                          ),
                          UXSpacer(height: 20),
                          //ANCHOR - Toko
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: UXAppColors.gojekGreen,
                                child: Image.asset(
                                  Assets.images.store.path,
                                  alignment: Alignment.center,
                                  height: 38,
                                  width: 38,
                                ),
                              ),
                              UXSpacer(width: 4),
                              Expanded(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                            Assets.svgs.badge.path,
                                            height: UXConstants.kIconsS,
                                            width: UXConstants.kFontSizeS,
                                          ),
                                          UXSpacer(width: 4),
                                          Expanded(
                                            child: Text(
                                              data.toko ?? "",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              style: TextStyle(
                                                  fontSize:
                                                      UXConstants.kFontSizeM,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          )
                                        ],
                                      ),
                                      UXSpacer(height: 4),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.location_on,
                                              size: UXConstants.kIconsS,
                                              color: UXAppColors.danger),
                                          UXSpacer(width: 4),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${data.kecamatan},",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontSize: UXConstants
                                                          .kFontSizeM),
                                                ),
                                                Text(
                                                  "${data.keldes}"
                                                      .toCapitalize(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontSize: UXConstants
                                                          .kFontSizeM),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ]),
                              )
                            ],
                          ),

                          UXSpacer(height: 20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Deskripsi',
                              style: TextStyle(
                                  fontSize: UXConstants.kFontSizeL,
                                  fontWeight: FontWeight.w500,
                                  color: UXColors.grey_100),
                            ),
                          ),
                          HtmlWidget(data.deskripsi ?? ''),
                        ]),
                      ),
                    );
                  },
                ),
              );
            }),
            bottomSheet: Builder(builder: (context) {
              return checkOut(context);
            }),
          )),
    );
  }

  Future showModalLogin(BuildContext context) {
    setState(() {
      isModalBottomSheetOpen = true;
    });
    return showModalBottomSheet(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20), topEnd: Radius.circular(20))),
      builder: (context) => Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                form(context),
                UXSpacer(height: 20),
                signInButton(
                  context,
                  onPressed: () {
                    if (_userController.text.isEmpty) {
                      UXToast.show(
                          message: 'email belum terisi',
                          backgroundColor: UXAppColors.danger,
                          textColor: UXColors.white);
                      return;
                    }
                    if (_passwordController.text.isEmpty) {
                      UXToast.show(
                          message: 'password belum terisi',
                          backgroundColor: UXAppColors.danger,
                          textColor: UXColors.white);
                      return;
                    }
                    BlocProvider.of<BebeliAuthBloc>(context)
                      ..add(BebeliAuthEvent.userLogin(
                          user: _userController.text,
                          pass: _passwordController.text));
                    hideKeyboard(context);
                    Navigator.pop(context);
                  },
                ),
              ]),
        ),
      ),
    );
  }

  void validasiForm() {
    if (_userController.text.isNotEmpty) {
      if (_passwordController.text.isNotEmpty) {
        setState(() {
          valid_form = true;
        });
      } else {
        setState(() {
          valid_form = false;
        });
      }
    } else {
      setState(() {
        valid_form = false;
      });
    }
  }

  Form form(BuildContext context) {
    return Form(
      key: _form,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.auth_form_form_title_username.tr(),
                style: const TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              UXInputCustom(
                autoValidMode: AutovalidateMode.onUserInteraction,
                labelText: LocaleKeys.auth_form_form_hint_title_username.tr(),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                controller: _userController,
                validator: (p0) =>
                    p0!.isEmpty ? "Nama Pengguna belum diisi" : null,
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  validasiForm();
                },
              ),
            ],
          ),
          const SizedBox(
            height: UXConstants.kPaddingL,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.auth_form_form_title_password.tr(),
                style: const TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              UXInputCustom(
                autoValidMode: AutovalidateMode.onUserInteraction,
                labelText: LocaleKeys.auth_form_form_hint_title_password.tr(),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                // prefixIcon: Icons.password_rounded,
                controller: _passwordController,
                // errorText: _error.message("password"),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                validator: (p0) =>
                    p0!.isEmpty ? "Kata sandi belum diisi" : null,
                onChanged: (value) {
                  validasiForm();
                },
              ),
            ],
          ),
          // SizedBox(
          //   height: expandedSize(context) -
          //       (Theme.of(context).textTheme.bodyMedium?.fontSize ?? 0),
          // ),
        ],
      ),
    );
  }

  UXButton signInButton(BuildContext context, {Function()? onPressed}) {
    return UXButton(
      onPressed: onPressed,
      title: LocaleKeys.auth_form_submit_signin.tr(),
      height: Theme.of(context).buttonTheme.height,
      backgroundColor: UXAppColors.primary,
      enabled: valid_form,
    );
  }

  Widget checkOut(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.only(
          top: 20,
          start: UXConstants.kPaddingL,
          end: UXConstants.kPaddingL,
          bottom: UXConstants.kPaddingS,
        ),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BBLStockButton(
                      withStock: true,
                      quantity: quantity,
                      stock: stock,
                      callback: (p0) {
                        setState(() {
                          quantity = p0;
                        });
                      },
                    ),
                    UXSpacer(width: 4),
                    Text(
                      'Stok: ${stock}',
                      style: TextStyle(
                          fontSize: UXConstants.kFontSizeL,
                          fontWeight: FontWeight.w600,
                          color: UXColors.grey_60),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: UXConstants.kPaddingM,
              ),
              SizedBox(
                height: 50,
                child: UXButtonCustom(
                    backgroundColor: UXAppColors.primary,
                    onPressed: () {
                      if (stock < 1) {
                        UXToast.show(
                            message: 'Stok tidak tersedia',
                            backgroundColor: UXAppColors.danger,
                            fontSize: UXConstants.kFontSizeL,
                            textColor: UXColors.white,
                            toastGravity: ToastGravity.CENTER);
                      } else {
                        context.read<BebeliAuthBloc>()
                          ..add(BebeliAuthEvent.checkStatus());
                      }
                    },
                    borderShape: ContinuousRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(30)),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.svgs.cartCheckoutStroke.path,
                          theme: SvgTheme(currentColor: UXColors.white),
                        ),
                        SizedBox(
                          width: UXConstants.kPaddingS,
                        ),
                        Text(
                          'Masukkan ke Keranjang',
                          style: TextStyle(
                              fontSize: UXConstants.kFontSizeL,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
