import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/custom_button_widget.dart';
import 'package:simple_datting_app/src/common_widgets/custom_text_button.dart';
import 'package:simple_datting_app/src/common_widgets/logo_and_tagline_widget.dart';
import 'package:simple_datting_app/src/common_widgets/upload_photo_widget.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class SignUpUploadPhotoSceen extends StatelessWidget {
  static const String routeName = "/sign-up-upload-photo";

  const SignUpUploadPhotoSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p50, horizontal: AppPadding.p24),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const LogoAndTagLineWidget(),
            const SizedBox(
              height: AppSize.s50,
            ),
            const UploadPhotoWidget(),
            const SizedBox(
              height: 53,
            ),
            Text(
              "Lintang Prayogo",
              style: getWhiteTextStyle(
                  fontSize: 22, fontWeight: FontWeightManeger.semiBold),
            ),
            const SizedBox(
              height: 4,
            ),
            Text("22 Mobile Developer", style: getBlack60TextStyle()),
            const SizedBox(
              height: 240,
            ),
            CustomButtonWidget(
              label: "Update My Profile",
              onTap: () {},
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            CustomTextButtonWidget(onPressed: () {}, label: "Skip for Now")
          ],
        )),
      ),
    );
  }
}
