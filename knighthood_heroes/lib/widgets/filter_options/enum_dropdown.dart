import 'package:flutter/material.dart';
import 'package:knighthood_heroes/general/extensions.dart';

class EnumDropdown<T extends Enum> extends StatefulWidget {
  const EnumDropdown(
    this.title, {
    required this.selectedValue,
    required this.onChanged,
    required this.enumVaules,
    this.elementBuilder,
    this.titleFontSize = 20,
    this.titleGap = 20,
    this.textColor = Colors.black,
    super.key,
  });

  final String title;
  final T selectedValue;
  final List<T> enumVaules;
  final void Function(T?) onChanged;
  final Function(T?)? elementBuilder;
  final double titleFontSize;
  final double titleGap;
  final Color textColor;

  @override
  State<EnumDropdown<T>> createState() => _EnumDropdown<T>();
}

class _EnumDropdown<T extends Enum> extends State<EnumDropdown<T>> {
  Widget _buildDropdownItem(T value) {
    return widget.elementBuilder == null ? Text(value.name.textFromEnumName()) : widget.elementBuilder!(value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: widget.titleFontSize,
            fontWeight: FontWeight.bold,
            color: widget.textColor,
          ),
        ),
        SizedBox(width: widget.titleGap),
        DropdownButton<T>(
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
