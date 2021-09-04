import 'package:flutter/material.dart';
import 'package:flutter_auth/components/action_seperator.dart';
import 'package:flutter_auth/components/custom_button.dart';
import 'package:flutter_auth/components/custom_text_button.dart';
import 'package:flutter_auth/components/custom_text_field.dart';
import 'package:flutter_auth/components/have_an_account.dart';
import 'package:flutter_auth/components/social_button.dart';
import 'package:flutter_auth/providers/dark_mode_provider.dart';
import 'package:flutter_auth/screens/forget_password/forget_password.dart';
import 'package:flutter_auth/screens/otp/otp_screen.dart';
import 'package:flutter_auth/screens/register/register_screen.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

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
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
      
                SizedBox(height: kDefaultPadding * 2),
      
                CustomTextField(
                  label: "Email Address",
                ),
      
                SizedBox(height: kDefaultPadding),
      
                CustomTextField(
                  label: "Password",
                  isObsecure: true,
                ),
      
                SizedBox(height: kDefaultPadding * 0.5),
      
                Container(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    text: 'Forgot Password?',
                    tap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetPasswordScreen())
                      );
                    },
                  ),
                ),
      
                SizedBox(height: kDefaultPadding),
      
                CustomButton(
                  text: 'Sign In',
                  tap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtpScreen())
                    );
                  },
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
                  text: "Don't have an account?",
                  actionText: "Register",
                  tap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen())
                    );
                  },
                ),
      
                Switch(
                  value: Provider.of<DarkModeProvider>(context, listen: false).darkMode,
                  onChanged: (value) {
                    Provider.of<DarkModeProvider>(context, listen: false).darkMode = value;
                  },
                  activeTrackColor: kPrimaryLightColor,
                  activeColor: kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}