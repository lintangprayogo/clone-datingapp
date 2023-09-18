import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/logo_widget.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/people_loved_screen.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';

class ExplorePeopleAppBarWidget extends StatelessWidget {
  const ExplorePeopleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                      "${AssetImageIconManager.assetPath}user_image.png"),
                  fit: BoxFit.cover)),
        ),
        const LogoWidget(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, PeopleLovedScreen.routeName);
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "${AssetImageIconManager.assetPath}icon_notification.png"),
                    fit: BoxFit.cover)),
          ),
        )
      ],
    );
  }
}
