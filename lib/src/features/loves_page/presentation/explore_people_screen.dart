import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_datting_app/src/common_widgets/explore_button_widget.dart';
import 'package:simple_datting_app/src/common_widgets/explore_people_app_bar_widget.dart';
import 'package:simple_datting_app/src/common_widgets/match_card_widget.dart';
import 'package:simple_datting_app/src/features/auth/data/data_user_account_local.dart';
import 'package:simple_datting_app/src/features/auth/domain/user_account.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/bloc/explore_people/explore_people_bloc.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/bloc/people_loved/people_loved_bloc.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class ExplorePeopleScreen extends StatefulWidget {
  static const String routeName = "/explore-people";

  const ExplorePeopleScreen({super.key});

  @override
  State<ExplorePeopleScreen> createState() => _ExplorePeopleScreenState();
}

class _ExplorePeopleScreenState extends State<ExplorePeopleScreen> {
  UserAccount? userAccount;

  final cardController = AppinioSwiperController();

  getDataUserAccount() async {
    final data = await DataUserAccountLocal.getDataUserAccountFromStorage();
    userAccount = UserAccount.fromMap(data);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    context.read<ExplorePeopleBloc>().add(OnExplorePeopleEventCalled());
    getDataUserAccount();
  }

  @override
  void dispose() {
    super.dispose();
    cardController.dispose();
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
            BlocBuilder<ExplorePeopleBloc, ExplorePeopleState>(
              builder: (context, state) {
                if (state is ExplorePeopleLoading) {
                  return const CircularProgressIndicator();
                } else if (state is ExplorePeopleSuccess) {
                  final users = state.result;
                  List<Widget> cards = [];
                  for (var user in users) {
                    cards.add(MatchCardWidget(user: user));
                  }

                  return Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: AppinioSwiper(
                                controller: cardController,
                                direction: AppinioSwiperDirection.top,
                                padding: EdgeInsets.zero,
                                onSwipe: (index, direction) {
                                  if (direction == AppinioSwiperDirection.top) {
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Yey!, you matched with ${users[index - 1].fullName}")));
                                  }
                                  if (direction !=
                                          AppinioSwiperDirection.left &&
                                      direction !=
                                          AppinioSwiperDirection.right &&
                                      direction !=
                                          AppinioSwiperDirection.bottom) {
                                    context.read<PeopleLovedBloc>().add(
                                        AddPeopleLoved(user: users[index - 1]));
                                  }
                                },
                                onEnd: () {
                                  context
                                      .read<ExplorePeopleBloc>()
                                      .add(OnExplorePeopleEventCalled());
                                },
                                cardsBuilder: (context, index) => cards[index],
                                cardsCount: cards.length)),
                        const SizedBox(
                          height: AppSize.s50,
                        ),
                        ExplorePeopleButtonWidget(
                            cardController: cardController)
                      ],
                    ),
                  );
                }
                return Container();
              },
            )
          ],
        ),
      ),
    );
  }
}
