import 'package:advanced_app/core/helper/spacing.dart';
import 'package:advanced_app/core/theming/app_text_styles.dart';
import 'package:advanced_app/core/widgets/app_text_button.dart';
import 'package:advanced_app/core/widgets/app_text_form_field.dart';
import 'package:advanced_app/features/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObsecureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: AppTextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: AppTextStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                Form(
                    child: Column(
                  children: [
                    const AppTextFormField(
                      hintText: "Email",
                    ),
                    verticalSpace(16),
                    AppTextFormField(
                      hintText: "password",
                      isObsecureText: isObsecureText,
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObsecureText = !isObsecureText;
                            });
                          },
                          child: Icon(isObsecureText
                              ? Icons.visibility_off
                              : Icons.visibility)),
                    ),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot password?",
                        style: AppTextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: "Login",
                      textStyle: AppTextStyles.font16WhiteSemiBold,
                      onPressed: () {},
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const AlreadyHaveAccountText(),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
