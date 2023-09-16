import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/explore_button_widget.dart';
import 'package:simple_datting_app/src/common_widgets/explore_people_app_bar_widget.dart';
import 'package:simple_datting_app/src/common_widgets/match_card_widget.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class ExplorePeopleScreen extends StatelessWidget {
  static const String routeName = "/explore-people";

  const ExplorePeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppPadding.p50, horizontal: AppPadding.p24),
        child: Column(
          children: [
            ExplorePeopleAppBarWidget(),
            SizedBox(
              height: AppSize.s50,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(child: MatchCardWidget()),
                  SizedBox(
                    height: AppSize.s50,
                  ),
                  ExplorePeopleButtonWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
