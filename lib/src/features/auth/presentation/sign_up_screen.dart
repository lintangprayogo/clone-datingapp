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

  String? validationInput() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return "Name Or Email Or Password\' cant be Empty";
    }
    if (nameController.text.length < 4 ||
        emailController.text.length < 10 ||
        passwordController.text.length < 8) {
      return "Too Short";
    }
    if (!emailController.text.contains("@")) {
      return "email not valid";
    }
    return null;
  }

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
                    final message = validationInput();
                    if (message != null) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(message)));
                      return;
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpAgeJobScreen(
                              fullName: nameController.text,
                              email: emailController.text,
                              password: passwordController.text),
                        ));
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
