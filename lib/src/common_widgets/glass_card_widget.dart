import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/features/loves_page/domain/user.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class GlassCardWidget extends StatelessWidget {
  final User user;

  const GlassCardWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p15, horizontal: AppPadding.p24),
      margin: const EdgeInsets.symmetric(
          vertical: AppMargin.m26, horizontal: AppMargin.m30),
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(
                  "${AssetImageIconManager.assetPath}glass_card_image.png"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(33)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.fullName,
                style: getWhiteTextStyle(
                    fontSize: FontSizeManager.f20,
                    fontWeight: FontWeightManeger.semiBold),
              ),
              Text(
                "${user.age}, ${user.job}",
                style: getWhiteTextStyle(fontSize: FontSizeManager.f14),
              ),
            ],
          ),
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "${AssetImageIconManager.assetPath}icon_profile.png"))),
          )
        ],
      ),
    );
  }
}
