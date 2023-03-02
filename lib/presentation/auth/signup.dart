import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mappy/constants/app_colors.dart';
import 'package:mappy/constants/text_theme.dart';
import 'package:mappy/router/routes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text("Registration", style: TextStyle(color: AppColors.textDark),),
        centerTitle: false,
        backgroundColor: Colors.transparent,
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
                    _buildEmailField(),
                    SizedBox(height: 15.h),
                    _buildPhoneField(),
                    SizedBox(height: 15.h),
                    _buildNameField(),
                    SizedBox(height: 15.h),
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

  Widget _buildEmailField() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "eg. john@doe.com",
        label: Text("Email"),
      ),
    );
  }

  Widget _buildPhoneField() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "eg. 0240000000",
        label: Text("Phone"),
      ),
    );
  }

  Widget _buildNameField() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "eg. Kwadwo Ntiamoah",
        label: Text("Name"),
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
