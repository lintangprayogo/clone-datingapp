import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/match_button_widget.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class ProfileDetailImageWidget extends StatelessWidget {
  const ProfileDetailImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
            width: double.infinity,
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "${AssetImageIconManager.assetPath}people_love1_image.png")),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: AppPadding.p40, horizontal: AppPadding.p24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MatchButtonWidget(
                dimension: 20,
                iconPath: "icon_arrow_left.png",
                onTap: () {},
              ),
              Text(
                "Lover Profile\nDetails",
                style: getWhiteTextStyle(
                    fontSize: FontSizeManager.f20,
                    fontWeight: FontWeightManeger.semiBold),
              ),
              MatchButtonWidget(
                dimension: 20,
                iconPath: "icon_close_circle.png",
                onTap: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
