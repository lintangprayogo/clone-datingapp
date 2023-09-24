import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/banner_widget.dart';
import 'package:simple_datting_app/src/common_widgets/custom_button_widget.dart';
import 'package:simple_datting_app/src/common_widgets/custom_text_field_widget.dart';
import 'package:simple_datting_app/src/features/auth/domain/user_account.dart';
import 'package:simple_datting_app/src/features/auth/presentation/sign_up_upload_photo.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class SignUpAgeJobScreen extends StatefulWidget {
  static const String routeName = "/sign-up-age-job";

  final String fullName;
  final String email;
  final String password;

  const SignUpAgeJobScreen(
      {super.key,
      required this.fullName,
      required this.email,
      required this.password});

  @override
  State<SignUpAgeJobScreen> createState() => _SignUpAgeJobScreenState();
}

class _SignUpAgeJobScreenState extends State<SignUpAgeJobScreen> {
  TextEditingController ageController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  String? validationInput() {
    if (jobController.text.isEmpty || ageController.text.isEmpty) {
      return "Job Or Email cant be Empty";
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
                controller: jobController,
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
                  final message = validationInput();
                  if (message != null) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(message)));
                    return;
                  }

                  UserAccount userAccount = UserAccount(
                      fullName: widget.fullName,
                      email: widget.email,
                      password: widget.password,
                      job: jobController.text,
                      age: ageController.text);
                  Navigator.pushNamed(context, SignUpUploadPhotoSceen.routeName,
                      arguments: userAccount);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
