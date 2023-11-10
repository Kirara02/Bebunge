import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../../../config/ux_constants.dart';
import '../bloc/about_bloc.dart';
import 'about_page.dart';

class TentangSejarah extends StatelessWidget {
  const TentangSejarah({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AboutBloc()..add(AboutEvent.startedSejarah()),
      child: Builder(builder: (context) {
        return BlocBuilder<AboutBloc, AboutState>(
          builder: (C, S) {
            return AboutPage(
              title: S.maybeWhen(
                orElse: () => SizedBox(),
                loading: () => null,
                loaded: (data) => Text("Tentang ${data.title ?? ''}",
                    style: TextStyle(
                        fontSize: UXConstants.kFontSizeXL,
                        fontWeight: FontWeight.w400)),
              ),
              content: S.maybeWhen(
                orElse: () => SizedBox(),
                loading: () => null,
                loaded: (data) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      child: HtmlWidget(data.content ?? "")),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
