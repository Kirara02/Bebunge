// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:bebunge/src/widgets/forms/ux_input_custom.dart';
import 'package:flutter/material.dart';

class KartuKuningForm extends StatefulWidget {
  final String title;
  final bool obsecureText;
  final int? maxLength;
  final TextEditingController controller;
  final bool readOnly;
  final InputDecoration? decoration;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;

  const KartuKuningForm({
    Key? key,
    required this.title,
    required this.controller,
    this.obsecureText = false,
    this.readOnly = false,
    this.decoration,
    this.onTap,
    this.keyboardType,
    this.maxLength,
  }) : super(key: key);

  @override
  State<KartuKuningForm> createState() => _KartuKuningFormSLogintate();
}

class _KartuKuningFormSLogintate extends State<KartuKuningForm> {
  bool isShow = false;

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
        UXInputCustom(
          onTap: widget.onTap,
          readOnly: widget.readOnly,
          controller: widget.controller,
          obscureText: widget.obsecureText,
          keyboardType: widget.keyboardType,
          decoration: (widget.decoration ?? const InputDecoration()),
          maxLength: widget.maxLength,
        )
      ],
    );
  }
}
