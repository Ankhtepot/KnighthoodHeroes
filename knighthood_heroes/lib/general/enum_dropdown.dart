import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knighthood_heroes/data/colors.dart';
import 'package:knighthood_heroes/data/global.dart';
import 'package:knighthood_heroes/general/extensions.dart';
import 'package:knighthood_heroes/general/text_rounded_with_background.dart';

class EnumDropdown<T extends Enum> extends StatefulWidget {
  const EnumDropdown(
    this.title, {
    required this.selectedValue,
    required this.onChanged,
    required this.enumVaules,
    this.element,
    this.titleFontSize = 20,
    this.titleGap = 20,
    this.textColor = Colors.white,
    this.dropdownColor = knighthoodContentColor,
    super.key,
  });

  final String title;
  final T selectedValue;
  final List<T> enumVaules;
  final void Function(T?) onChanged;
  final Function(T?)? element;
  final double titleFontSize;
  final double titleGap;
  final Color textColor;
  final Color dropdownColor;

  @override
  State<EnumDropdown<T>> createState() => _EnumDropdown<T>();
}

class _EnumDropdown<T extends Enum> extends State<EnumDropdown<T>> {
  Widget _buildDropdownItem(T value) {
    String text = value.name.textFromEnumName();

    return widget.element == null
        ? TextRoundedWithBackground.cabin(
            text == 'None' ? 'All' : text,
          )
        : widget.element!(value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(widget.title,
            style: normalTextStyle(
              fontSize: widget.titleFontSize,
              color: widget.textColor,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(width: widget.titleGap),
        DropdownButton<T>(
          elevation: 5,
          dropdownColor: widget.dropdownColor,
          value: widget.selectedValue,
          items: widget.enumVaules.map((value) {
            return DropdownMenuItem<T>(
              value: value,
              child: _buildDropdownItem(value),
            );
          }).toList(),
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}
