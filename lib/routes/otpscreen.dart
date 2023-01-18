import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:medory/constants/colors.dart';
import 'package:medory/constants/text_style.dart';
import 'package:medory/constants/utils.dart';
import 'package:medory/routes/pass_choice.dart';
import 'package:medory/widgets/elevated_button.dart';

class OtpScreen extends StatelessWidget {
  bool isSms;
  OtpScreen({super.key, this.isSms = true});

  @override
  Widget build(BuildContext context) {
    String otp = '123456';
    return Scaffold(
      backgroundColor: ColorConfig.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 51),
          Center(
            child: Image.asset(
              'assets/images/medory_logo.png',
            ),
          ),
          const SizedBox(height: 43),
          const Text(
            "Inserisci il codice di conferma",
            style: TextStyleConfig.heading,
          ),
          const SizedBox(height: 16),
          Text(
            isSms
                ? "Riceverai un codice via SMS sul tuo smartphone"
                : "Riceverai un codice via mail",
            style: TextStyleConfig.detailText,
          ),
          const SizedBox(height: 36),
          SizedBox(
            height: 56,
            child: OtpTextField(
              showFieldAsBox: true,
              onSubmit: (value) {
                otp = value;
              },
              numberOfFields: 6,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButtonWidget(
            name: "CONTINUA",
            onPressed: () => Utils.push(
              context,
              const PassChoice(),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Non hai ricevuto il codice?",
                style: TextStyleConfig.textButtonSideText,
              ),
              const SizedBox(width: 8),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "INVIA DI NUOVO",
                    style: TextStyleConfig.textButtonStyle,
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
