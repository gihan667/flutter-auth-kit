import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.tap,
  }) : super(key: key);

  final String text;
  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: kShadowColor.withOpacity(0.38),
            blurRadius: 10.0,
            offset: const Offset(0, 10.0)
          )
        ]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: tap,
          borderRadius: BorderRadius.circular(50.0),
          child: Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
