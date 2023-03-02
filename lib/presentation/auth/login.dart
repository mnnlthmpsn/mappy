import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mappy/constants/app_colors.dart';
import 'package:mappy/constants/text_theme.dart';
import 'package:mappy/router/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // logo here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const [
                    Icon(Icons.location_on_outlined,
                        size: 60, color: AppColors.textDark)
                  ],
                ),
                SizedBox(height: 80.h),
                Text("Enter Phone number to continue",
                    style: KTextTheme.textHeader),
                SizedBox(height: 2.h),
                Text(
                  "An OTP code will be sent to the number you provide for verification",
                  style: KTextTheme.textSubHeader,
                ),
                SizedBox(height: 12.h),
                _buildPhoneField(),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("New User? "),
                    InkWell(
                      child: const Text("Sign Up"),
                      onTap: () =>
                          {Navigator.of(context).pushNamed(AppRoutes.register)},
                    )
                  ],
                )
              ],
            ),
            _buildButton()
          ],
        ),
      ),
    ));
  }

  Widget _buildPhoneField() {
    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(),
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "eg. 0240000000",
        label: Text("Phone Number"),
      ),
    );
  }

  Widget _buildButton() {
    return Builder(builder: (BuildContext context) {
      return SizedBox(
        width: double.infinity,
        height: 56,
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.otp);
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
      );
    });
  }
}
