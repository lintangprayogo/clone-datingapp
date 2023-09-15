import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/theme_manager/asset_collor_manager.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class CustomButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const CustomButtonWidget(
      {super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 55.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s50),
              gradient: LinearGradient(
                  colors: [ColorManager.pink, ColorManager.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Text(
            label,
            style: getWhiteTextStyle(fontWeight: FontWeightManeger.semiBold),
          ),
        ));
  }
}
