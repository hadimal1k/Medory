import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medory/constants/text_style.dart';
import 'package:medory/widgets/custom_text_form_field.dart';
// import 'package:group_radio_button/group_radio_button.dart';

enum SingingCharacter { lafyett, jefferson }

enum Gender { male, female, other, other2 }

String radioGroupValue = "Pending";
final _status = ["Pending", "Released", "Blocked"];

class GenderRadioFormField extends StatefulWidget {
  final Validator? validator;
  const GenderRadioFormField({super.key, required this.validator});

  @override
  State<GenderRadioFormField> createState() => _GenderRadioFormFieldState();
}

class _GenderRadioFormFieldState extends State<GenderRadioFormField> {
  String character = "Health Profile";

  Gender? currentValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Radio Button")),
      body: FormField<String>(
        initialValue: null,
        validator: widget.validator,
        builder: (state) {
          return Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20, bottom: 5),
                  child: Column(
                    children: [
                      _RadioButton(
                        value: Gender.male,
                        groupValue: currentValue,
                        label: "Male",
                        onChanged: _onChanged,
                      ),
                      _RadioButton(
                        value: Gender.female,
                        groupValue: currentValue,
                        label: "Female",
                        onChanged: _onChanged,
                      ),
                      _RadioButton(
                        value: Gender.other,
                        groupValue: currentValue,
                        label: "Other",
                        onChanged: _onChanged,
                      ),
                    ],
                  ),
                ),
                if (state.hasError) Text(state.errorText!, style: TextStyleConfig.fieldError),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }

  void _onChanged(value) {
    setState(() {
      currentValue = value;
    });
  }
}

class _RadioButton<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final void Function(T? value) onChanged;
  final String label;
  const _RadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<T>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(
          label,
          style: TextStyleConfig.guidanceSubHeading,
        ),
      ],
    );
  }
}
