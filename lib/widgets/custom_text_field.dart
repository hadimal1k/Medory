import 'package:flutter/material.dart';
import 'package:medory/constants/colors.dart';
import 'package:medory/constants/text_style.dart';

typedef OnChangeHandler = void Function(String? text);

class CustomTextField extends StatefulWidget {
  final double? width;
  final double? height;
  final String? label;
  final String? initalText;
  final OnChangeHandler onChanged;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    this.width,
    this.height,
    this.label,
    this.initalText,
    required this.onChanged,
    this.controller,
  }) : assert(
          (initalText != null && controller == null) || (initalText == null),
        );

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _textFieldFocusNode = FocusNode();

  bool _hasFocs = false;
  late TextEditingController _effectiveContorller;

  @override
  void initState() {
    super.initState();
    _textFieldFocusNode.addListener(onFocusUpdate);
    _effectiveContorller =
        widget.controller ?? TextEditingController(text: widget.initalText);
  }

  @override
  void dispose() {
    super.dispose();
    _textFieldFocusNode.removeListener(onFocusUpdate);
  }

  void onFocusUpdate() {
    _hasFocs = _textFieldFocusNode.hasFocus;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(
            color: const Color(0xFF684EF4),
            style: _hasFocs ? BorderStyle.solid : BorderStyle.none,
          ),
        ),
      ),
      padding: const EdgeInsets.only(left: 8, right: 0, top: 2, bottom: 2),
      child: TextField(
        controller: _effectiveContorller,
        focusNode: _textFieldFocusNode,
        onChanged: widget.onChanged,
        cursorColor: ColorConfig.textColorBlue,
        cursorHeight: 17,
        style: const TextStyle(
          fontSize: 14,
          height: 24 / 14,
          color: ColorConfig.textColorBlue,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          label: widget.label == null
              ? null
              : Text(widget.label!, style: TextStyleConfig.detailText),
        ),
      ),
    );
  }
}
