// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextInputType textinputtype;
  final String hinttext;
  final bool ispassword;
  const MyTextField(
      {required this.hinttext,
      required this.ispassword,
      required this.textinputtype});
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textinputtype,
      obscureText: ispassword,
      decoration: InputDecoration(
          hintText: hinttext,
          enabledBorder:
              OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          filled: true,
          contentPadding: const EdgeInsets.all(8)),
    );
  }
}
