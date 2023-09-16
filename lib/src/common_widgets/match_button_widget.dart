import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';

class MatchButtonWidget extends StatelessWidget {
  final String iconPath;
  final double dimension;
  final VoidCallback onTap;

  const MatchButtonWidget(
      {super.key,
      this.dimension = 50,
      required this.iconPath,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: dimension,
        height: dimension,
        decoration: BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage("${AssetImageIconManager.assetPath}$iconPath"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
