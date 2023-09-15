import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/theme_manager/asset_collor_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String labelName;
  final String hintText;
  final bool isObsecure;
  final TextEditingController controller;

  const CustomTextFieldWidget(
      {super.key,
      required this.labelName,
      required this.hintText,
      this.isObsecure = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: getWhiteTextStyle(),
        ),
        const SizedBox(
          height: AppSize.s8,
        ),
        TextField(
          controller: controller,
          obscureText: isObsecure,
          style: getWhiteTextStyle(),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p30, vertical: AppPadding.p15),
              filled: true,
              hintText: hintText,
              hintStyle: getBlack30TextStyle(),
              fillColor: ColorManager.secondary,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSize.s50))),
        ),
        const SizedBox(
          height: AppSize.s14,
        )
      ],
    );
  }
}
