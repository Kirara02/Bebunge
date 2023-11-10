import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownCustom extends StatelessWidget {
  const DropdownCustom({
    this.items,
    this.selectedItem,
    this.label,
    this.prefixIcon,
    super.key,
    this.onChanged,
  });

  final List<dynamic>? items;
  final String? label;
  final dynamic selectedItem;
  final Widget? prefixIcon;
  final Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label!,
          style: TextStyle(),
        ),
        SizedBox(height: 8),
        DropdownSearch<dynamic>(
          popupProps: const PopupProps.menu(
            constraints: BoxConstraints(
              maxHeight: 130,
            ),
            showSearchBox: false,
          ),
          items: items!,
          selectedItem: selectedItem,
          dropdownDecoratorProps: DropDownDecoratorProps(
            baseStyle: const TextStyle(
              fontSize: UXConstants.kFontSizeS,
              color: UXColors.text,
            ),
            dropdownSearchDecoration: InputDecoration(
              filled: false,
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              prefixIcon: prefixIcon,
              suffixIcon: const Icon(
                Icons.keyboard_arrow_down,
                color: UXColors.grey_80,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: UXColors.custom_grey1),
                borderRadius: BorderRadius.all(Radius.circular(80)),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: UXColors.grey_20, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(80))),
            ),
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
