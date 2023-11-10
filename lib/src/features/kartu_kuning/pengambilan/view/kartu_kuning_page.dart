// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:bebunge/src/features/kartu_kuning/login/bloc/auth_kk_bloc.dart';
import 'package:bebunge/src/features/kartu_kuning/pengambilan/bloc/pengambilan_kk_bloc.dart';
import 'package:bebunge/src/features/kartu_kuning/pengambilan/view/kartu_kuning_pengambilan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KartuKuningPage extends StatelessWidget {
  const KartuKuningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PengambilanKkBloc(),
        ),
        BlocProvider(
          create: (context) => AuthKkBloc(),
        ),
      ],
      child: KartuKuningPengambilan(),
    );
  }
}
