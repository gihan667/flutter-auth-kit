import 'package:flutter/material.dart';
import 'package:flutter_auth/components/custom_text_button.dart';

import '../constants.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({
    Key? key,
    required this.text,
    required this.tap,
    required this.actionText,
  }) : super(key: key);

  final String text;
  final GestureTapCallback tap;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14
          )
        ),

        SizedBox(width: kDefaultPadding / 2),

        CustomTextButton(
          tap: tap,
          text: actionText
        )
      ],
    );
  }
}