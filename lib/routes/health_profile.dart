import 'package:flutter/material.dart';
import 'package:medory/constants/text_style.dart';
import 'package:medory/constants/utils.dart';

import 'package:medory/routes/health_choice.dart';
import 'package:medory/widgets/custom_text_field.dart';
import 'package:medory/widgets/custom_text_form_field.dart';
import 'package:medory/widgets/elevated_button.dart';

class HealthProfile extends StatelessWidget {
  HealthProfile({
    super.key,
  });

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String name = '';
    void onChangeTextName(String? text) {
      name = text ?? "";
    }

    void onChangeTextCognome(String? text) {}
    void onChangeTextCodicalFiscal(String? text) {}

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FB),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 51),
              Center(
                child: Image.asset("assets/images/medory_logo.png"),
              ),
              const SizedBox(height: 43),
              const Text("Crea il tuo profilo sanitario",
                  style: TextStyleConfig.heading),
              const SizedBox(height: 16),
              const Text(
                  "Il profilo sanitario è il contenitore di tutte le tue informazioni sanitarie e la chiave per dialogare con le strutture sanitarie pubbliche e private.",
                  style: TextStyleConfig.detailText),
              const SizedBox(height: 16),
              CustomTextField(
                label: "Name",
                onChanged: onChangeTextName,
                initalText: "Inital Text",
                //controller: TextEditingController(text: "initial text"),
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onChanged: onChangeTextCognome,
                label: "Cognome",
                initalText: null,
                validator: (text) {
                  if (text?.isEmpty ?? true) {
                    return "This field cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              CustomTextField(
                onChanged: onChangeTextCodicalFiscal,
                label: "Codical Fiscale",
              ),
              const SizedBox(height: 32),
              ElevatedButtonWidget(
                name: "CREA PROFILO SANITARIO",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Utils.push(context, const HealthChoice());
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
