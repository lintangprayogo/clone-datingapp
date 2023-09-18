import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/custom_button_widget.dart';
import 'package:simple_datting_app/src/common_widgets/match_button_widget.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class PeopleProfileScreen extends StatelessWidget {
  static const String routeName = "/people-profile";
  const PeopleProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
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
          ),
          const SizedBox(
            height: AppSize.s30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Shanti",
                    style: getWhiteTextStyle(
                        fontSize: FontSizeManager.f28,
                        fontWeight: FontWeightManeger.semiBold)),
                Text("22 Lawyer", style: getBlackTextStyle()),
                const SizedBox(
                  height: AppSize.s16,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mattis ullamcorper velit sed ullamcorper morbi tincidunt. Amet nulla facilisi morbi tempus iaculis urna id volutpat.",
                  style: getWhiteTextStyle(),
                )
              ],
            ),
          ),
          const SizedBox(
            height: AppSize.s16,
          ),
          Container(
            height: 80,
            margin: const EdgeInsets.only(left: 24),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                    width: 120,
                    height: 80,
                    margin: const EdgeInsets.only(right: AppMargin.m16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.s18),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "${AssetImageIconManager.assetPath}hobby1_image.png"))));
              },
            ),
          ),
          const SizedBox(
            height: AppSize.s40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
            child: CustomButtonWidget(
              label: "Chat Now",
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
