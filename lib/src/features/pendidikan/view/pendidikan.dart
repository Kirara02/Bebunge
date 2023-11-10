import 'package:bebunge/src/features/pendidikan/cubit/pendidikan_params_cubit.dart';
import 'package:bebunge/src/features/pendidikan/view/pendidikan_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sekolah_list_bloc.dart';

class Pendidikan extends StatefulWidget {
  const Pendidikan({super.key});

  @override
  State<Pendidikan> createState() => _PendidikanState();
}

class _PendidikanState extends State<Pendidikan> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => PendidikanParamsCubit(),
      ),
      BlocProvider(
        create: (context) => SekolahListBloc(),
      ),
    ], child: PendidikanBody());
  }
}
