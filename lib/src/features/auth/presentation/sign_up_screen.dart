import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/banner_widget.dart';
import 'package:simple_datting_app/src/common_widgets/custom_button_widget.dart';
import 'package:simple_datting_app/src/common_widgets/custom_text_button.dart';
import 'package:simple_datting_app/src/common_widgets/custom_text_field_widget.dart';
import 'package:simple_datting_app/src/features/auth/presentation/sign_up_age_and_job_screen.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signUp';

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: AppPadding.p50, horizontal: AppPadding.p24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const BannerWidget(),
                CustomTextFieldWidget(
                    labelName: "Full Name",
                    hintText: "Enter Your Full Name",
                    controller: nameController),
                CustomTextFieldWidget(
                    labelName: "Email",
                    hintText: "Enter Your Email",
                    controller: emailController),
                CustomTextFieldWidget(
                  labelName: "Password",
                  hintText: "Enter Your Password",
                  controller: passwordController,
                  isObsecure: true,
                ),
                const SizedBox(height: AppSize.s16),
                CustomButtonWidget(
                  label: "Let,s Started",
                  onTap: () {
                    Navigator.pushNamed(context, SignUpAgeJobScreen.routeName);
                  },
                ),
                const SizedBox(height: AppSize.s20),
                CustomTextButtonWidget(
                    onPressed: () {}, label: "Sign In to My Account")
              ],
            ),
          )),
    );
  }
}
