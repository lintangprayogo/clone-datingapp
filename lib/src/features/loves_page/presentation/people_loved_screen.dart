import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/people_loved_card_widget.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class PeopleLovedScreen extends StatelessWidget {
  static const String routeName = "/people-loved";

  const PeopleLovedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "People You\nLoved",
          style: getWhiteTextStyle(
              fontSize: FontSizeManager.f20,
              fontWeight: FontWeightManeger.semiBold),
        ),
        leading: IconButton(
          onPressed: () {},
          iconSize: AppSize.s20,
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            iconSize: AppSize.s20,
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: AppSize.s50,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return const PeopleLovedCardWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
