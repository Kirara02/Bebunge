import 'package:bebunge/src/features/bebeli/bloc/bebeli_category_bloc.dart';
import 'package:bebunge/src/features/bebeli/bloc/bebeli_slider_bloc.dart';
import 'package:bebunge/src/features/bebeli/view/bebeli_beranda.dart';
import 'package:bebunge/src/features/bebeli_detail/bloc/bebeli_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bebeli_filter_bloc.dart';

class Bebeli extends StatelessWidget {
  const Bebeli({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BebeliFilterBloc(),
        ),
        BlocProvider(
          create: (context) =>
              BebeliSliderBloc()..add(BebeliSliderEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              BebeliCategoryBloc()..add(BebeliCategoryEvent.started()),
        ),
        BlocProvider(
          create: (context) => BebeliDetailBloc(),
        ),
      ],
      child: BebeliBeranda(),
    );
  }
}
