import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/explore_button_widget.dart';
import 'package:simple_datting_app/src/common_widgets/explore_people_app_bar_widget.dart';
import 'package:simple_datting_app/src/common_widgets/match_card_widget.dart';
import 'package:simple_datting_app/src/features/auth/data/data_user_account_local.dart';
import 'package:simple_datting_app/src/features/auth/domain/user_account.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class ExplorePeopleScreen extends StatefulWidget {
  static const String routeName = "/explore-people";

  const ExplorePeopleScreen({super.key});

  @override
  State<ExplorePeopleScreen> createState() => _ExplorePeopleScreenState();
}

class _ExplorePeopleScreenState extends State<ExplorePeopleScreen> {
  UserAccount? userAccount;

  getDataUserAccount() {
    final data = DataUserAccountLocal.getDataUserAccountFromStorage();
    userAccount = UserAccount.fromMap(data);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getDataUserAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p50, horizontal: AppPadding.p24),
        child: Column(
          children: [
            ExplorePeopleAppBarWidget(imagePath: userAccount?.imageProfile),
            const SizedBox(
              height: AppSize.s50,
            ),
            const Expanded(
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
