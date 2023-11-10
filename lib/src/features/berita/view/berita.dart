import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/berita_terkini/berita_terkini_bloc.dart';
import '../bloc/berita_category_bloc.dart';
import '../bloc/berita_filter_bloc.dart';
import '../cubit/berita_params_cubit.dart';
import 'berita_search.dart';

class Berita extends StatefulWidget {
  const Berita({super.key});

  @override
  State<Berita> createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) =>
            BeritaCategoryBloc()..add(BeritaCategoryEvent.started()),
      ),
      BlocProvider(
        create: (context) => BeritaTerkiniBloc(),
      ),
      BlocProvider(
        create: (context) => BeritaFilterBloc(),
      ),
      BlocProvider(create: (context) => BeritaParamsCubit())
    ], child: BeritaSearch());
  }
}
