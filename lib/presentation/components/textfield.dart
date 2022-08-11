import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget defaultTextField(
    EdgeInsetsGeometry padding, Function(String value) onTextChange,
    {IconData icon = Icons.email,
    hint = "Enter your email",
    String labelText = "Email"}) {
  return Padding(
      padding: padding,
      child: TextField(
        onChanged: (value) {
          onTextChange(value);
        },
        decoration: InputDecoration(
            suffixIcon: Icon(icon),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gapPadding: 4,
            ),
            hintText: hint,
            contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            labelText: labelText),
      ));
}
