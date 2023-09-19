import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class PeopleIdentityWidget extends StatelessWidget {
  const PeopleIdentityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
