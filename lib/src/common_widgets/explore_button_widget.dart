import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/match_button_widget.dart';

class ExplorePeopleButtonWidget extends StatelessWidget {
  const ExplorePeopleButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MatchButtonWidget(
          onTap: () => {},
          iconPath: "icon_close.png",
        ),
        MatchButtonWidget(
          dimension: 80,
          onTap: () => {},
          iconPath: "icon_love.png",
        ),
        MatchButtonWidget(
          onTap: () => {},
          iconPath: "icon_favorite.png",
        )
      ],
    );
  }
}
