import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/logo_widget.dart';
import 'package:simple_datting_app/src/features/auth/data/data_user_account_local.dart';
import 'package:simple_datting_app/src/features/auth/presentation/sign_up_screen.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/people_loved_screen.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';

class ExplorePeopleAppBarWidget extends StatelessWidget {
  final String? imagePath;

  const ExplorePeopleAppBarWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            UserAccountRegister.logout();
            Navigator.pushNamedAndRemoveUntil(
                context, SignUpScreen.routeName, (route) => false);
          },
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: imagePath != null
                        ? FileImage(File(imagePath!))
                        : const AssetImage(
                                "${AssetImageIconManager.assetPath}user_image.png")
                            as ImageProvider,
                    fit: BoxFit.cover)),
          ),
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
