import 'package:flutter/material.dart';
import 'package:flutter_auth/components/app_bar.dart';
import 'package:flutter_auth/components/custom_button.dart';
import 'package:flutter_auth/components/custom_text_field.dart';

import '../../constants.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(
        context,
        '',
        [],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: size.height,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Forget Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),

                SizedBox(height: kDefaultPadding * 0.5),

                Text(
                  'Enter your email address to get password reset instructions.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                  )
                ),

                SizedBox(height: kDefaultPadding * 2),

                CustomTextField(
                  label: "Email Address",
                ),

                SizedBox(height: kDefaultPadding),

                CustomButton(
                  text: 'Next',
                  tap: () {}
                ),

                SizedBox(height: kDefaultPadding * 2),
              ],
            ),
          )
        )
      )
    );
  }
}