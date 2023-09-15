import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 143,
        height: 34,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "${AssetImageIconManager.assetPath}logo_image.png")),
        ));
  }
}
