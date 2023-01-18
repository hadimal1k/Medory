import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:medory/constants/utils.dart';
import 'package:medory/routes/health_profile.dart';
import 'package:medory/routes/login_recover_tel.dart';
import 'package:medory/widgets/elevated_button.dart';

class LogInPass extends StatelessWidget {
  const LogInPass({super.key});

  @override
  Widget build(BuildContext context) {
    String? pass;
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FB),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 51),
            Center(
              child: Image.asset("assets/images/medory_logo.png"),
            ),
            const SizedBox(height: 43),
            const Text(
              "Accedi a Medory",
              style: TextStyle(
                fontFamily: "DMSans",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 24 / 20,
                letterSpacing: 0.18,
                color: Color(0xFF2B1E67),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Inserisci il passcode per accedere",
              style: TextStyle(
                fontFamily: "DMSans",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 24 / 14,
                letterSpacing: 0.5,
                color: Color(0xFF555874),
              ),
            ),
            const SizedBox(height: 24),
            OtpTextField(
              showFieldAsBox: true,
              numberOfFields: 6,
              fillColor: const Color.fromRGBO(0, 0, 0, 0.05),
              onSubmit: (value) {
                pass = value;
              },
            ),
            const SizedBox(height: 32),
            ElevatedButtonWidget(
              name: "ACCEDI",
              onPressed: () => Utils.push(
                context,
                pass == null ? const LogInPass() : HealthProfile(),
              ),
            ),
            const SizedBox(height: 32),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LogInRecoverTel();
                    }));
                  },
                  child: const Text(
                    "Hai dimenticato il passcode?",
                    style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      height: 24 / 14,
                      letterSpacing: 0.18,
                      color: Color(0xFF684EF4),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
