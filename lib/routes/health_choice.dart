import 'package:flutter/material.dart';
import 'package:medory/constants/colors.dart';
import 'package:medory/constants/text_style.dart';
import 'package:medory/routes/guidance_path_1.dart';

class HealthChoice extends StatelessWidget {
  const HealthChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.backgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: 667,
          width: 375,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 51),
                Center(
                  child: Image.asset("assets/images/medory_logo.png"),
                ),
                const SizedBox(height: 47),
                const Text(
                  "Ti diamo il benvenuto su Medory!",
                  style: TextStyleConfig.heading,
                ),
                const SizedBox(height: 14),
                const Text(
                  "Sei qui per...",
                  style: TextStyleConfig.detailText,
                ),
                const SizedBox(height: 24),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: ColorConfig.cardColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 1),
                        Divider(color: ColorConfig.dividerColor),
                        SizedBox(height: 18),
                        HealthChoiceWidget(
                          title: "Supporto per la prossima visita",
                          route: GuidancePath1(),
                        ),
                        SizedBox(height: 18),
                        Divider(color: ColorConfig.dividerColor),
                        SizedBox(height: 18),
                        HealthChoiceWidget(
                          title: "Tenere in ordine i miei documenti sanitari",
                          height: 20.2,
                          route: GuidancePath1(),
                        ),
                        SizedBox(height: 18),
                        Divider(color: ColorConfig.dividerColor),
                        SizedBox(height: 18),
                        HealthChoiceWidget(
                          title: "Seguire e monitorare una terapia",
                          route: GuidancePath1(),
                        ),
                        SizedBox(height: 18),
                        Divider(color: ColorConfig.dividerColor),
                        SizedBox(height: 18),
                        HealthChoiceWidget(
                          title: "Altro",
                          route: GuidancePath1(),
                        ),
                        SizedBox(height: 22),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  "SALTA",
                  style: TextStyleConfig.salta,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HealthChoiceWidget extends StatelessWidget {
  final String title;
  final double height;
  final Widget route;
  const HealthChoiceWidget(
      {super.key,
      required this.title,
      this.height = 20.83,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (() {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return route;
        }));
      }),
      child: Text(
        title,
        style: TextStyle(
            fontFamily: "DMSans",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            height: height / 16,
            letterSpacing: 0.5,
            color: const Color(0xFF684EF4)),
      ),
    );
  }
}
