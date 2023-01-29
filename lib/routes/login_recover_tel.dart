import 'package:flutter/material.dart';
import 'package:medory/constants/utils.dart';

import 'package:medory/routes/account_screen.dart';
import 'package:medory/routes/otpscreen.dart';
import 'package:medory/widgets/elevated_button.dart';
import 'package:medory/widgets/text_field.dart';

class LogInRecoverTel extends StatelessWidget {
  const LogInRecoverTel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FB),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 51),
          Center(
            child: Image.asset("assets/images/medory_logo.png"),
          ),
          const SizedBox(height: 43),
          const Text(
            "Hai dimenticato il passcode?",
            style: TextStyle(
                fontFamily: "DMSans",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 24 / 20,
                letterSpacing: 0.18,
                color: Color(0xFF2B1E67)),
          ),
          const SizedBox(height: 16),
          const Text(
            "Inserisci il tuo numero di telefono o l’indirizzo email per reimpostare il tuo passcode.                     Ti invieremo un codice per crearne uno nuovo",
            style: TextStyle(
                fontFamily: "DMSans",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 22 / 14,
                letterSpacing: 0.5,
                color: Color(0xFF555874)),
          ),
          const SizedBox(height: 24),
          const TextFieldWidget(label: "Numero di telefono o email"),
          const SizedBox(height: 44),
          ElevatedButtonWidget(
            name: "REIMPOSTA PASSCODE",
            onPressed: () => Utils.push(
              context,
              OtpScreen(
                isSms: false,
              ),
            ),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Non hai un account?",
                style: TextStyle(
                    fontFamily: "DMSans",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 24 / 14,
                    letterSpacing: 0.18,
                    color: Color(0xFF555874)),
              ),
              const SizedBox(width: 16),
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return AccountScreen();
                    }));
                  },
                  child: const Text(
                    "CREA ACCOUNT",
                    style: TextStyle(
                        fontFamily: "DMSans",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        height: 24 / 14,
                        letterSpacing: 0.75,
                        color: Color(0xFF684EF4)),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
