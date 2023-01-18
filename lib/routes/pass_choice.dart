import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:medory/constants/colors.dart';
import 'package:medory/constants/text_style.dart';
import 'package:medory/constants/utils.dart';
import 'package:medory/routes/health_profile.dart';
import 'package:medory/widgets/elevated_button.dart';

class PassChoice extends StatelessWidget {
  const PassChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 51,
            ),
            Center(child: Image.asset("assets/images/medory_logo.png")),
            const SizedBox(height: 46),
            const Text(
              "Scegli un passcode",
              style: TextStyleConfig.heading,
            ),
            const SizedBox(height: 16),
            const Text(
              "Inserisci un codice composto da 6 numeri che utilizzerai come una password",
              style: TextStyleConfig.detailText,
            ),
            const SizedBox(height: 24),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.start,
              numberOfFields: 6,
              showFieldAsBox: true,
              onSubmit: (value) {},
            ),
            const SizedBox(height: 32),
            const Text(
              "Ripeti il passcode scelto",
              style: TextStyleConfig.detailText,
            ),
            const SizedBox(height: 24),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.start,
              numberOfFields: 6,
              showFieldAsBox: true,
              onSubmit: (value) {},
            ),
            const SizedBox(height: 48),
            ElevatedButtonWidget(
              name: "IMPOSTA PASSCODE",
              onPressed: () => Utils.push(
                context,
                HealthProfile(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
