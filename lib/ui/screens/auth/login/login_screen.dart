import 'package:code_structure/core/constants/app_assest.dart';
import 'package:code_structure/core/constants/auth_text_feild.dart';
import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/ui/screens/auth/login/login_view_model.dart';
import 'package:code_structure/ui/auth/sign_UP/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewModel(),
      child: Consumer<LoginViewModel>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            surfaceTintColor: whiteColor,
            backgroundColor: whiteColor,
            title: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: 40.w,
                height: 40.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: [
                      BoxShadow(
                        color: greenColor.withOpacity(0.50),
                        offset: Offset(0, 1),
                        spreadRadius: -1,
                        blurRadius: 5,
                      )
                    ]),
                child: Icon(Icons.arrow_back_ios_new, color: greenColor),
              ),
            ),
          ),

          ///
          /// Start Body
          ///
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      AppAssets().redLogo,
                      scale: 4,
                    ),
                  ),
                  40.verticalSpace,
                  Text(
                    "Welcome Back 👋",
                    style: style25B,
                  ),
                  20.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0, bottom: 4),
                    child: Text(
                      "Username",
                      style: style16B.copyWith(color: titleColor),
                    ),
                  ),
                  TextFormField(
                    decoration: authFieldDecoration.copyWith(
                        hintText: "Input Username",
                        prefixIcon: Image.asset(
                          AppAssets().username,
                          scale: 3,
                        )),
                  ),
                  20.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0, bottom: 4),
                    child: Text(
                      "Password",
                      style: style16B.copyWith(color: titleColor),
                    ),
                  ),
                  TextFormField(
                    obscureText: model.visible,
                    decoration: authFieldDecoration.copyWith(
                      hintText: "Input password",
                      prefixIcon: Image.asset(
                        AppAssets().password,
                        scale: 3,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            model.toggleVisibility();
                          },
                          icon: Icon(
                            model.visible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: borderColor,
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: style16B.copyWith(color: blueColor),
                      ),
                    ),
                  ),
                  50.verticalSpace,
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: blackColor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Text(
                        "Login",
                        style: style16B.copyWith(color: whiteColor),
                      ),
                    ),
                  ),
                  30.verticalSpace,

                  ///
                  /// OR CONTAIUE WITH
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Image.asset(AppAssets().line1)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Or continue with",
                          style: style14B.copyWith(color: titleColor),
                        ),
                      ),
                      Expanded(child: Image.asset(AppAssets().line2))
                    ],
                  ),
                  30.verticalSpace,
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(width: 1.0, color: borderColor),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(AppAssets().google, scale: 3),
                          20.horizontalSpace,
                          Text("Continue with Google", style: style16B),
                        ],
                      ),
                    ),
                  ),
                  30.verticalSpace,

                  ///
                  /// DONOT Have an account
                  ///
                  GestureDetector(
                    onTap: () {
                      Get.offAll(SignUpScreen());
                    },
                    child: Center(
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text: "Register",
                              style: style16B.copyWith(color: blueColor),
                            ),
                          ], text: "Don't have an account? ", style: style16B)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
