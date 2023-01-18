import 'package:flutter/material.dart';

import 'package:medory/constants/colors.dart';
import 'package:medory/constants/text_style.dart';

class GuidancePath1 extends StatelessWidget {
  const GuidancePath1({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(viewportFraction: 0.9);
    return Scaffold(
      backgroundColor: ColorConfig.backgroundColor,
      body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 31),
                  Text(
                    "My Medory",
                    style: TextStyleConfig.guidanceMyMedoryText,
                  ),
                  SizedBox(height: 7),
                  Text("Preparati per la prossima visita",
                      style: TextStyleConfig.guidanceHeading),
                  SizedBox(height: 23),
                ],
              ),
            ),
            Container(
              width: 305,
              height: 442,
              child: PageView(
                controller: pageController,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Guidance1Widget(
                      path: "assets/guidance/sharing.png",
                      heading:
                          "Seleziona i momenti più importanti e condividi il tuo profilo",
                      detail:
                          "Nella sezione My Medory è possibile salvare per dopo i documenti che ritieni più importanti. ",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Guidance1Widget(
                      path: "assets/guidance/adding.png",
                      heading: "Inserisci le ultime patologie e terapie",
                      detail:
                          "Aggiungi la documentazione dell'ultimo anno, come referti, esami, terapie, in questo modo il tuo medico avrà un quadro ancora più completo.",
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 22),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "SALTA",
                      style: TextStyleConfig.salta,
                    )),
              ),
            )
          ]),
    );
  }
}

class Guidance1Widget extends StatelessWidget {
  final String? path;
  final String? heading;
  final String? detail;
  const Guidance1Widget({super.key, this.path, this.heading, this.detail});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 0.0, bottom: 26, top: 21, right: 0.0),
              child: Image.asset(path!),
            ),
            Text(
              heading!,
              style: TextStyleConfig.guidanceSubHeading,
            ),
            const SizedBox(height: 16),
            Text(
              detail!,
              style: TextStyleConfig.detailText,
            ),
            const SizedBox(height: 33),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: ColorConfig.primaryBlue,
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 11.17,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
