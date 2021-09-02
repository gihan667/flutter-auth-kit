import 'package:flutter/material.dart';

import '../constants.dart';

class ActionSeperator extends StatelessWidget {
  const ActionSeperator({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: kBorderColor,
          width: size.width / 3,
          height: 1,
        ),
      
        SizedBox(width: kDefaultPadding / 2),
      
        Text(
          'OR',
          style: TextStyle(
            fontWeight: FontWeight.w600
          )
        ),
      
        SizedBox(width: kDefaultPadding / 2),
      
        Container(
          color: kBorderColor,
          width: size.width / 3,
          height: 1,
        ),
      ],
    );
  }
}