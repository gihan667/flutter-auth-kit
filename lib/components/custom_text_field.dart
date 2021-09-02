import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    this.isObsecure
  }) : super(key: key);

  final String label;
  final bool? isObsecure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObsecure ?? false,
      decoration: InputDecoration(
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding),
      ),
    );
  }
}