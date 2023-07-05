import 'package:flutter/material.dart';
import 'package:knighthood_heroes/general/extensions.dart';

class EnumDropdown<T extends Enum> extends StatefulWidget {
  const EnumDropdown(
    this.title, {
    required this.selectedValue,
    required this.onChanged,
    required this.enumVaules,
    super.key,
  });

  final String title;
  final T selectedValue;
  final List<T> enumVaules;
  final void Function(T?) onChanged;

  @override
  State<EnumDropdown<T>> createState() => _EnumDropdown<T>();
}

class _EnumDropdown<T extends Enum> extends State<EnumDropdown<T>> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 20),
        DropdownButton<T>(
          value: widget.selectedValue,
          items: widget.enumVaules.map((value) {
            return DropdownMenuItem<T>(
              value: value,
              child: Text(value.toString().split('.').last.capitalize()),
            );
          }).toList(),
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}
