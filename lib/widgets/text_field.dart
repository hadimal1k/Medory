import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final Border border;
  const TextFieldWidget(
      {super.key,
      required this.label,
      this.border = const Border(
        top: BorderSide.none,
        bottom: BorderSide.none,
        right: BorderSide.none,
        left: BorderSide.none,
      )});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      width: 335,
      height: 56,
      alignment: Alignment.center,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelStyle: const TextStyle(
            fontFamily: "DMSans",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.15,
            color: Color(0xff555874),
          ),
          focusColor: const Color(0xFF684EF4),
          labelText: label,
        ),
      ),
    );
  }
}
