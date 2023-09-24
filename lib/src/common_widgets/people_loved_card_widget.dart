import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/features/loves_page/domain/user.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/people_profile_screen.dart';
import 'package:simple_datting_app/src/theme_manager/asset_collor_manager.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class PeopleLovedCardWidget extends StatelessWidget {
  final User user;

  const PeopleLovedCardWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, PeopleProfileScreen.routeName,
              arguments: user);
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: AppMargin.m18),
          decoration: BoxDecoration(
              color: ColorManager.secondary,
              borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            contentPadding: const EdgeInsets.all(AppPadding.p10),
            leading: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(user.imagePath), fit: BoxFit.cover)),
            ),
            title: Text(
              user.fullName,
              style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f20,
                  fontWeight: FontWeightManeger.semiBold),
            ),
            subtitle: Text(
              "${user.age}, ${user.job}",
              style: getGrey60TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
