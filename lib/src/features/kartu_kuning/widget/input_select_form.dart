import 'package:flutter/material.dart';

class InputSelectForm extends StatelessWidget {
  final String label;
  final List<dynamic> options;
  final String? value;
  final ValueChanged<dynamic> onChanged;

  InputSelectForm({
    required this.label,
    required this.options,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(),
        ),
        SizedBox(height: 8),
        DropdownButtonFormField<dynamic>(
          value: value,
          items: options.map((option) {
            return DropdownMenuItem<dynamic>(
              value: option,
              child: Text(
                option.toString(),
              ),
            );
          }).toList(),
          onChanged: onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            isDense: true,
            filled: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
          ),
        ),
      ],
    );
  }
}
