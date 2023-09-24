import 'package:appinio_swiper/controllers.dart';
import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/match_button_widget.dart';

class ExplorePeopleButtonWidget extends StatelessWidget {
  final AppinioSwiperController cardController;

  const ExplorePeopleButtonWidget({super.key, required this.cardController});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MatchButtonWidget(
          onTap: () => {cardController.swipeLeft()},
          iconPath: "icon_close.png",
        ),
        MatchButtonWidget(
          dimension: 80,
          onTap: () => {cardController.swipeUp()},
          iconPath: "icon_love.png",
        ),
        MatchButtonWidget(
          onTap: () => {cardController.swipeRight()},
          iconPath: "icon_favorite.png",
        )
      ],
    );
  }
}
