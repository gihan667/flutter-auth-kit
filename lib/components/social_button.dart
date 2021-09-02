import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    required this.icon,
    required this.tap,
    required this.color,
  }) : super(key: key);

  final GestureTapCallback tap;
  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      borderRadius: BorderRadius.circular(12.0),
      splashColor: color,
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: color
          ),
          borderRadius: BorderRadius.circular(12.0)
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          icon,
        ),
      ),
    );
  }
}