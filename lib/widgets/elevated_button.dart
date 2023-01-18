import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String name;
  final VoidCallback? onPressed;

  const ElevatedButtonWidget(
      {super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 335,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF684EF4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: onPressed,
          child: Text(
            name,
            style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: "DMSans",
              fontSize: 14,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              height: 16 / 14,
            ),
          )),
    );
  }
}
