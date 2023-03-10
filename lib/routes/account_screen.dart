import 'package:flutter/material.dart';
import 'package:medory/constants/colors.dart';
import 'package:medory/constants/text_style.dart';
import 'package:medory/constants/utils.dart';

import 'package:medory/routes/log_in.dart';
import 'package:medory/routes/otpscreen.dart';
import 'package:medory/widgets/custom_text_field.dart';
import 'package:medory/widgets/elevated_button.dart';

import '../widgets/custom_text_form_field.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({super.key});
  String? number = '';
  void onChangedCreateAccount(String? text) {
    number = text ?? '';
  }

  final formKeyAcc = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.backgroundColor,
      body: Form(
        key: formKeyAcc,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 51),
            Center(
              child: Image.asset(
                'assets/images/medory_logo.png',
              ),
            ),
            const SizedBox(
              height: 43,
            ),
            const Text("Crea il tuo account Medory",
                style: TextStyleConfig.heading),
            const SizedBox(
              height: 24,
            ),
            const AccountScreenWidget(
              title: "Raccogli i tuoi dati sanitari in un solo luogo",
            ),
            const SizedBox(height: 12),
            const AccountScreenWidget(
              title: "Condividi i tuoi dati con gli specialisti",
            ),
            const SizedBox(height: 12),
            const AccountScreenWidget(
              title: "Monitora il tuo stato di salute",
            ),
            const SizedBox(height: 24),
            CustomTextFormField(
              //initalText: number,
              validator: (text) {
                if (text?.isEmpty ?? true) {
                  return "Please give Numero di Telefono";
                }
                return null;
              },
              onChanged: onChangedCreateAccount,
              label: "Numero di telefono",
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButtonWidget(
                name: "CREA ACCOUNT",
                onPressed: () {
                  if (formKeyAcc.currentState!.validate()) {
                    Utils.push(context, OtpScreen());
                  }
                }),
            const SizedBox(
              height: 32,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hai gi?? un account?",
                  style: TextStyleConfig.textButtonSideText,
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    Utils.push(context, const LogIn());
                  },
                  child: const Text(
                    "ACCEDI",
                    style: TextStyleConfig.textButtonStyle,
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class AccountScreenWidget extends StatelessWidget {
  final String title;
  const AccountScreenWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
        const SizedBox(
          height: 24,
          child: Icon(
            Icons.check_circle,
            color: Color(0xFF555874),
            size: 20,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyleConfig.detailTextheight1,
          ),
        ),
      ],
    );
  }
}
