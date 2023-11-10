import 'package:bebunge/src/features/bebeli/bloc/bebeli_filter_bloc.dart';
import 'package:bebunge/src/features/bebeli/view/bebeli_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/filter_kecamatan_bloc.dart';
import '../bloc/filter_kelurahan_bloc.dart';

class BebeliSearchProvider extends StatelessWidget {
  const BebeliSearchProvider({this.searchValue, super.key});
  final String? searchValue;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BebeliFilterBloc(),
        ),
        BlocProvider(
          create: (context) => FilterKecamatanBloc(),
        ),
        BlocProvider(
          create: (context) => FilterKelurahanBloc(),
        ),
      ],
      child: BebeliSearch(searchValue: searchValue),
    );
  }
}
