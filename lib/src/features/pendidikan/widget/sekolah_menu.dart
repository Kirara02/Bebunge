import 'package:bebunge/src/features/pendidikan/cubit/pendidikan_params_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../network/model/pendidikan/sekolah_detail.dart';
import '../../../widgets/button/button_custom.dart';

class SekolahMenu extends StatefulWidget {
  const SekolahMenu(this.pagingController, {super.key});
  final PagingController<int, SekolahDetail> pagingController;

  @override
  State<SekolahMenu> createState() => _SekolahMenuState();
}

class _SekolahMenuState extends State<SekolahMenu> {
  int? currentIndex;

  List<Map<String, dynamic>> kategory = [
    {'kategory': 'Formal', 'value': 'formal'},
    {'kategory': 'Non-Formal', 'value': 'non-formal'},
    {'kategory': 'TK', 'value': 'tk'},
    {'kategory': 'SD', 'value': 'sd'},
    {'kategory': 'SMP', 'value': 'smp'},
    {'kategory': 'SMA', 'value': 'sma'}
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          height: 24,
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              UXButtonCustom(
                onPressed: () {
                  setState(() {
                    currentIndex == 6;
                  });
                  context.read<PendidikanParamsCubit>()
                    ..addParams(category: '');
                  widget.pagingController.refresh();
                },
                height: 32,
                borderShape:
                    StadiumBorder(side: BorderSide(color: UXAppColors.biru1)),
                withHorizontalPadding: false,
                padding: 1,
                backgroundColor: UXColors.white,
                child: Row(
                  children: [
                    Icon(Icons.refresh, color: UXAppColors.biru2),
                  ],
                ),
              ),
              SizedBox(width: 5),
              ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: kategory.length,
                  separatorBuilder: (context, index) => SizedBox(width: 5),
                  itemBuilder: (context, index) => UXButtonCustom(
                        onPressed: () {
                          setState(() {
                            currentIndex = index;
                          });
                          context.read<PendidikanParamsCubit>()
                            ..addParams(category: kategory[index]['value']);
                          widget.pagingController.refresh();
                        },
                        height: 32,
                        borderShape: StadiumBorder(
                            side: BorderSide(color: UXAppColors.biru1)),
                        withHorizontalPadding: true,
                        padding: 1,
                        backgroundColor: currentIndex == index
                            ? UXAppColors.biru2
                            : UXColors.white,
                        child: Text(kategory[index]['kategory'],
                            style: TextStyle(
                                color: currentIndex == index
                                    ? UXColors.white
                                    : UXAppColors.biru2,
                                fontSize: UXConstants.kFontSizeXS)),
                      )),
            ],
          )),
    );
  }
}
