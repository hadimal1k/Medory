import 'package:flutter/material.dart';

mixin Utils {
  static push(BuildContext context, Widget route) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return route;
        },
      ),
    );
  }
}
