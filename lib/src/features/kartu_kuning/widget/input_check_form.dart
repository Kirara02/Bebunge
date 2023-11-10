import 'package:flutter/material.dart';

class InputCheckForm extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;

  InputCheckForm({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
