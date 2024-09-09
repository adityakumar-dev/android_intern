import 'package:android_intern/widgets/textstyle_ui.dart';
import 'package:android_intern/widgets/ui_btn_widget.dart';
import 'package:flutter/material.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({super.key});

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pushReplacementNamed(context, '/'),
            icon: const Icon(Icons.close),
          ),
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/second_wave.png",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            const PhoneAuthUi(),
          ],
        ));
  }
}

class PhoneAuthUi extends StatelessWidget {
  const PhoneAuthUi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Please enter your mobile number ",
              style: heading,
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
                width: 180,
                child: Text(
                  "You'll receive a 4 digit code to verify next",
                  textAlign: TextAlign.center,
                  style: subheading,
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                  hintStyle: const TextStyle(
                    letterSpacing: 1,
                    color: Color(0xff6a6c7b),
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/india-flag-.jpg",
                        height: 24, // Adjust the size if needed
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "+91 - ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  enabledBorder: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            btnWidgetUiClick(
                context,
                "CONTINUE",
                365,
                () => Navigator.pushNamed(context, '/verifyphone',
                    arguments: "123456789")),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
