import 'package:android_intern/widgets/textstyle_ui.dart';
import 'package:android_intern/widgets/ui_btn_widget.dart';
import 'package:flutter/material.dart';

class LanguageSelect extends StatelessWidget {
  const LanguageSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/first_wave.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/picture.png',
                    height: 100,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Please Select Your Language",
                    style: heading,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 250,
                    child: Text(
                      "You can change the language at any time.",
                      textAlign: TextAlign.center,
                      style: subheading,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 250,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff494a50), width: 1),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: "English",
                        items: const [
                          DropdownMenuItem(
                            value: "English",
                            child: Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text("English"),
                            ),
                          ),
                        ],
                        onChanged: (v) {},
                        isExpanded: true,
                        iconSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  btnWidgetUiClick(context, "NEXT", 250,
                      () => Navigator.pushNamed(context, '/phoneauth'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
