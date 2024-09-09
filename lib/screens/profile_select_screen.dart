import 'package:android_intern/widgets/textstyle_ui.dart';
import 'package:android_intern/widgets/ui_btn_widget.dart';
import 'package:flutter/material.dart';

class ProfileSelectScreen extends StatefulWidget {
  const ProfileSelectScreen({super.key});

  @override
  State<ProfileSelectScreen> createState() => _ProfileSelectScreenState();
}

class _ProfileSelectScreenState extends State<ProfileSelectScreen> {
  String selectedValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Please select your profile",
                style: heading,
              ),
              const SizedBox(
                height: 30,
              ),
              profileSelectRadioBtn("Shipper", 'assets/shipper.png', 'Shipper',
                  'Lorem ipsum dolor sit amet, consectetur adippiscing'),
              const SizedBox(
                height: 30,
              ),
              profileSelectRadioBtn(
                  'Transporter',
                  'assets/transporter.png',
                  'Transporter',
                  'Lorem ipsum dolor sit amet, consectetur adippiscing'),
              const SizedBox(
                height: 30,
              ),
              btnWidgetUiClick(
                  context,
                  "CONTINUE",
                  MediaQuery.of(context).size.width - 20,
                  () => Navigator.pushNamed(context, '/home')),
              const Spacer(
                flex: 2,
              ),
            ],
          )),
    );
  }

  Container profileSelectRadioBtn(
      String value, String img, String heading, String sub) {
    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(border: Border.all()),
        child: GestureDetector(
          onTap: () => {
            setState(() {
              selectedValue = value;
            })
          },
          child: Row(
            children: [
              Transform.scale(
                scale: 1.5,
                child: Radio(
                  visualDensity:
                      const VisualDensity(horizontal: -2, vertical: -2),
                  activeColor: Colors.black,
                  value: value,
                  groupValue: selectedValue,
                  onChanged: (v) {
                    setState(() {
                      selectedValue = v.toString();
                    });
                  },
                ),
              ),
              Image.asset(
                img,
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      sub,
                      maxLines: 2,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6a6c7b)),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
