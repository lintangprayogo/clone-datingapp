import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_datting_app/src/common_widgets/match_button_widget.dart';
import 'package:simple_datting_app/src/features/loves_page/domain/user.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/bloc/people_loved/people_loved_bloc.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/explore_people_screen.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class ProfileDetailImageWidget extends StatelessWidget {
  final User user;
  const ProfileDetailImageWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(user.imagePath)),
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
                onTap: () {
                  Navigator.pop(context);
                },
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
                onTap: () {
                  context
                      .read<PeopleLovedBloc>()
                      .add(RemovePeopleLoved(user: user));
                  Navigator.pushNamedAndRemoveUntil(
                      context, ExplorePeopleScreen.routeName, (route) => false);
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
