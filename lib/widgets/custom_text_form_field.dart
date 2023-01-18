import 'package:flutter/material.dart';
import 'package:medory/constants/colors.dart';
import 'package:medory/constants/text_style.dart';

typedef OnChangeHandler = void Function(String? text);
typedef Validator = String? Function(String? text);

class CustomTextFormField extends StatefulWidget {
  final double? width;
  final double? height;
  final String? label;
  final String? initalText;
  final OnChangeHandler? onChanged;
  final TextEditingController? controller;
  final Validator? validator;

  const CustomTextFormField({
    super.key,
    this.width,
    this.height,
    this.label,
    this.initalText,
    this.onChanged,
    this.validator,
    this.controller,
  }) : assert(
          (initalText != null && controller == null) || (initalText == null),
        );

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
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
    return FormField<String>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      initialValue: _effectiveContorller.text,
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
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
              padding:
                  const EdgeInsets.only(left: 8, right: 0, top: 2, bottom: 2),
              child: TextField(
                controller: _effectiveContorller,
                focusNode: _textFieldFocusNode,
                onChanged: (text) {
                  state.didChange(text);
                  if (widget.onChanged != null) {
                    widget.onChanged!(text);
                  }
                },
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
                  suffixIcon: Icon(Icons.error),
                ),
              ),
            ),
            const SizedBox(height: 2),
            state.hasError
                ? Text(
                    state.errorText!,
                    style: TextStyleConfig.fieldError,
                  )
                : const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
