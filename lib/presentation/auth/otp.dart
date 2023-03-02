import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mappy/constants/app_colors.dart';
import 'package:mappy/constants/text_theme.dart';
import 'package:mappy/router/routes.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "OTP Verification",
            style: TextStyle(color: AppColors.textDark),
          ),
          centerTitle: false,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Verification", style: KTextTheme.textHeader),
                    SizedBox(height: 2.h),
                    Text(
                      "Enter Verification code sent to you at 0540069437",
                      style: KTextTheme.textSubHeader,
                    ),
                    SizedBox(height: 12.h),
                    _buildOtpForm()
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.home);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.light,
                    ),
                    child: const Text(
                      "Continue",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildOtpForm() {
    return SizedBox(
      height: 45,
      child: OtpTextField(
        numberOfFields: 6,
        fieldWidth: 45,
        borderColor: AppColors.textDark,
        focusedBorderColor: AppColors.primary,
        mainAxisAlignment: MainAxisAlignment.start,
        obscureText: false,
        showCursor: false,
        borderRadius: BorderRadius.circular(10),
        //set to true to show as box or false to show as dash
        showFieldAsBox: false,
        handleControllers: (controllers) {
          for (var controller in controllers) {
            // you can clear fields here when there's an error
            print(controller);
          }
        },
        //runs when a code is typed in
        onCodeChanged: (String code) {},
        onSubmit: (String verificationCode) {
          print(verificationCode);
        }, // end onSubmit
      ),
    );
  }
}
