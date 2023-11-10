// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../config/theme/colors.dart';

class KartuKuningTextArea extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final int maxLines;
  const KartuKuningTextArea({
    Key? key,
    required this.title,
    required this.controller,
    this.decoration,
    this.keyboardType,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  State<KartuKuningTextArea> createState() => _KartuKuningTextAreaState();
}

class _KartuKuningTextAreaState extends State<KartuKuningTextArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(),
        ),
        const SizedBox(
          height: 5.0,
        ),
        TextFormField(
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          decoration: (widget.decoration ?? const InputDecoration()).copyWith(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: UXColors.grey_20, width: 1),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          maxLines: widget.maxLines,
        )
      ],
    );
  }
}
