import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/glass_card_widget.dart';
import 'package:simple_datting_app/src/theme_manager/asset_collor_manager.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "${AssetImageIconManager.assetPath}people_love2_image.png"),
              ),
              border: Border.all(
                width: 10.0,
                color: ColorManager.secondary,
                strokeAlign: BorderSide.strokeAlignInside,
              ),
              borderRadius: BorderRadius.circular(AppSize.s70)),
        ),
        const GlassCardWidget()
      ],
    );
  }
}
