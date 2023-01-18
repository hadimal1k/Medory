import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GuidanceWidget extends StatelessWidget {
  final String title;
  final String path;

  const GuidanceWidget({super.key, required this.title, required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(height: 31),
          Text(
            "My Medory",
            style: TextStyle(
                fontFamily: "DMSans",
                fontSize: 12,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
                height: 16 / 12,
                color: Color.fromRGBO(85, 88, 116, 0.87)),
          ),
          SizedBox(height: 7),
          Text(
            "Preparati per la prossima visita",
            style: TextStyle(
                fontFamily: "DMSans",
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
                height: 31 / 24,
                color: Color(0xFF2B1E67)),
          ),
          SizedBox(height: 23),
        ],
      ),
    );
  }
}
