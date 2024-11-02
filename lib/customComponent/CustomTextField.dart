// custom_text_field.dart
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry contentPadding;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.contentPadding = const EdgeInsets.only(left: 10),
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Adaptive.h(7),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}
