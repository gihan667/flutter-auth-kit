import 'package:flutter/material.dart';
import 'package:flutter_auth/components/app_bar.dart';
import 'package:flutter_auth/components/custom_button.dart';
import 'package:flutter_auth/providers/dark_mode_provider.dart';
import 'package:flutter_auth/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({ Key? key }) : super(key: key);

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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: kDefaultPadding * 2),

                SvgPicture.asset(
                  'assets/images/otp.svg',
                  height: size.height / 4,
                ),

                SizedBox(height: kDefaultPadding * 2),

                Text(
                  'Enter the 6-digit code sent to your phone/email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: kDefaultPadding * 2),

                Consumer<DarkModeProvider>(
                  builder: (context, darkModeProvider, child) {
                    return PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.transparent,
                      ),
                      length: 6,
                      animationType: AnimationType.fade,
                      pinTheme: pinTheme(context, darkModeProvider.darkMode),
                      cursorColor: kPrimaryColor,
                      animationDuration: Duration(milliseconds: 300),
                      textStyle: TextStyle(fontSize: 20, height: 1.6),
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      boxShadows: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: darkModeProvider.darkMode ? Colors.white12 : Colors.black12,
                          blurRadius: 10,
                        )
                      ],
                      onCompleted: (v) {
                        print("Completed $v");
                      },
                      onChanged: (value) {
                        print(value);
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    );
                  }
                ),

                SizedBox(height: kDefaultPadding / 2),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't received the code? ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        " Resend",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: kPrimaryColor
                        ),
                      ),
                    )
                  ]
                ),

                SizedBox(height: kDefaultPadding * 2),

                CustomButton(
                  text: 'Continue',
                  tap: () {}
                ),

                SizedBox(height: kDefaultPadding * 2),

              ]
            )
          )
        ),
      ),
    );
  }
}