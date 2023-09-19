import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/custom_button_widget.dart';
import 'package:simple_datting_app/src/common_widgets/people_identity_widget.dart';
import 'package:simple_datting_app/src/common_widgets/profile_detail_image_widget.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class PeopleProfileScreen extends StatelessWidget {
  static const String routeName = "/people-profile";
  const PeopleProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProfileDetailImageWidget(),
          const SizedBox(
            height: AppSize.s30,
          ),
          const PeopleIdentityWidget(),
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
