import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/features/loves_page/domain/user.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class PeopleIdentityWidget extends StatelessWidget {
  final User user;
  const PeopleIdentityWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(user.fullName,
              style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f28,
                  fontWeight: FontWeightManeger.semiBold)),
          Text("${user.age}, ${user.job}", style: getBlackTextStyle()),
          const SizedBox(
            height: AppSize.s16,
          ),
          Text(
            user.description,
            style: getWhiteTextStyle(),
          )
        ],
      ),
    );
  }
}
