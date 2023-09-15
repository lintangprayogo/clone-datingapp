import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/banner_widget.dart';
import 'package:simple_datting_app/src/common_widgets/custom_button_widget.dart';
import 'package:simple_datting_app/src/common_widgets/custom_text_field_widget.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class SignUpAgeJobScreen extends StatefulWidget {
  static const String routeName = "/sign-up-age-job";

  const SignUpAgeJobScreen({super.key});

  @override
  State<SignUpAgeJobScreen> createState() => _SignUpAgeJobScreenState();
}

class _SignUpAgeJobScreenState extends State<SignUpAgeJobScreen> {
  TextEditingController ageController = TextEditingController();
  TextEditingController jobController = TextEditingController();
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
                controller: ageController,
                labelName: "Job",
                hintText: "Enter Your Job",
              ),
              CustomTextFieldWidget(
                controller: ageController,
                labelName: "Age",
                hintText: "Enter Your Age",
              ),
              const SizedBox(height: 117.0),
              CustomButtonWidget(
                label: "Continue Sign Up",
                onTap: () {
                  Navigator.pushNamed(context, SignUpAgeJobScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
