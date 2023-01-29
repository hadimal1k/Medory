import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medory/constants/text_style.dart';
import 'package:group_radio_button/group_radio_button.dart';

enum SingingCharacter { lafyett, jefferson }

String radioGroupValue = "Pending";
final _status = ["Pending", "Released", "Blocked"];

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  SingingCharacter _character = SingingCharacter.lafyett;
  String character = "Health Profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Radio Button")),
      body: Column(children: [
        ListTile(
            title: const Text(
              "Lafeyett",
              style: TextStyleConfig.heading,
            ),
            leading: Radio<String>(
              groupValue: character,
              value: "lafyett",
              onChanged: (String? value) {
                setState(() {
                  character = value!;
                });
              },
              //activeColor: Colors.red,
              fillColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.blue;
                }
                return Colors.green;
              }),
            )),
        ListTile(
            title: const Text("Jefferson", style: TextStyleConfig.heading),
            leading: Radio<String>(
              value: " jefferson",
              groupValue: character,
              onChanged: (String? value) {
                setState(() {
                  character = value!;
                });
              },
            )),
        const SizedBox(
          height: 30,
        ),
        RadioGroup<String>.builder(
            groupValue: radioGroupValue,
            onChanged: (String? value) {
              setState(() {
                radioGroupValue = value!;
              });
            },
            items: _status,
            itemBuilder: (item) => RadioButtonBuilder(item,
                textPosition: RadioButtonTextPosition.left))
      ]),
    );
  }
}
