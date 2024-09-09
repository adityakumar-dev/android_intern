import 'package:android_intern/widgets/textstyle_ui.dart';
import 'package:android_intern/widgets/ui_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifyPhoneUi extends StatelessWidget {
  const VerifyPhoneUi({super.key});

  @override
  Widget build(BuildContext context) {
    final userPhone = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/third_wave.png",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            VerifyPhoneUiWidget(userPhone, context),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container VerifyPhoneUiWidget(String userPhone, BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Verify Phone",
              style: heading,
            ),
            Text(
              "Code is sent to +91$userPhone",
              style: subheading,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Pinput(
                defaultPinTheme: PinTheme(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff93d2f3))),
                length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Didn't receive code? ",
                  style: TextStyle(color: Color(0xff6a6c7b)),
                ),
                GestureDetector(
                  child: const Text("Request Again"),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            btnWidgetUiClick(context, "VERIFY AND CONTINUE", 340,
                () => Navigator.pushNamed(context, '/profileselect'))
          ],
        ));
  }
}
