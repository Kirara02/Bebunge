// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class InputRadioForm extends StatefulWidget {
  final String title;
  final List<String> options;
  final String? selected;
  final ValueChanged<String?> onSelected;

  const InputRadioForm({
    Key? key,
    this.selected,
    required this.title,
    required this.options,
    required this.onSelected,
  }) : super(key: key);

  @override
  State<InputRadioForm> createState() => _InputRadioFormState();
}

class _InputRadioFormState extends State<InputRadioForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(),
        ),
        Row(
          children: [
            for (var option in widget.options)
              Row(
                children: [
                  Radio(
                    value: option,
                    groupValue: widget.selected,
                    onChanged: widget.onSelected,
                  ),
                  Text(option),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
