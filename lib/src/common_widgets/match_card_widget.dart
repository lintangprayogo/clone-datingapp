import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/glass_card_widget.dart';
import 'package:simple_datting_app/src/features/loves_page/domain/user.dart';
import 'package:simple_datting_app/src/theme_manager/asset_collor_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class MatchCardWidget extends StatelessWidget {
  final User user;

  const MatchCardWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(user.imagePath),
              ),
              border: Border.all(
                width: 10.0,
                color: ColorManager.secondary,
                strokeAlign: BorderSide.strokeAlignInside,
              ),
              borderRadius: BorderRadius.circular(AppSize.s70)),
        ),
        GlassCardWidget(user: user)
      ],
    );
  }
}
