import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.tap,
    required this.text
  }) : super(key: key);

  final GestureTapCallback tap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Text(
        text,
        style: TextStyle(
          color: kPrimaryLightColor,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}