import 'package:flutter/material.dart';
import 'package:flutter_auth/components/action_seperator.dart';
import 'package:flutter_auth/components/custom_button.dart';
import 'package:flutter_auth/components/custom_text_field.dart';
import 'package:flutter_auth/components/have_an_account.dart';
import 'package:flutter_auth/components/social_button.dart';

import '../../constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: size.height,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: kDefaultPadding * 2),
      
                Text(
                  'Register',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
      
                SizedBox(height: kDefaultPadding * 2),
      
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        label: "First Name",
                      ),
                    ),
      
                    SizedBox(width: kDefaultPadding),
      
                    Expanded(
                      child: CustomTextField(
                        label: "Last Name",
                      ),
                    ),
                  ],
                ),
      
                SizedBox(height: kDefaultPadding),
      
                CustomTextField(
                  label: "Email Address",
                ),
      
                SizedBox(height: kDefaultPadding),
      
                CustomTextField(
                  label: "Password",
                  isObsecure: true,
                ),
      
                SizedBox(height: kDefaultPadding),
      
                CustomButton(
                  text: 'Register',
                  tap: () {}
                ),
      
                SizedBox(height: kDefaultPadding * 2),
      
                ActionSeperator(size: size),
      
                SizedBox(height: kDefaultPadding * 2),
      
                Row(
                  children: [
                    Expanded(
                      child: SocialButton(
                        tap: () {},
                        icon: 'assets/icons/google.svg',
                        color: kGoogleColor,
                      ),
                    ),
      
                    SizedBox(width: kDefaultPadding / 2),
      
                    Expanded(
                      child: SocialButton(
                        tap: () {},
                        icon: 'assets/icons/fb.svg',
                        color: kFbColor,
                      ),
                    ),
                  ]
                ),
      
                SizedBox(height: kDefaultPadding),
      
                HaveAnAccount(
                  text: "Already have an account?",
                  actionText: "Login",
                  tap: () {
                    Navigator.pop(context);
                  },
                ),
      
                SizedBox(height: kDefaultPadding * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}