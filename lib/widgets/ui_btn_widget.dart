import 'package:flutter/material.dart';

GestureDetector btnWidgetUiClick(
    BuildContext context, String txt, double width, Function() onClick) {
  return GestureDetector(
    onTap: onClick,
    child: Container(
      height: 60,
      width: width,
      alignment: Alignment.center,
      decoration: const BoxDecoration(color: Color(0xff2e3b62)),
      child: Text(
        txt,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
