import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';

class CustomTextButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const CustomTextButtonWidget(
      {super.key, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: getBlack30TextStyle()
              .copyWith(decoration: TextDecoration.underline),
        ));
  }
}
