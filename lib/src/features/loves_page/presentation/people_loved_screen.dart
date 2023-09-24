import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_datting_app/src/common_widgets/people_loved_card_widget.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/bloc/people_loved/people_loved_bloc.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class PeopleLovedScreen extends StatefulWidget {
  static const String routeName = "/people-loved";

  const PeopleLovedScreen({super.key});

  @override
  State<PeopleLovedScreen> createState() => _PeopleLovedScreenState();
}

class _PeopleLovedScreenState extends State<PeopleLovedScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PeopleLovedBloc>().add(OnPeopleLovedEventCalled());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "People You\nLoved",
          textAlign: TextAlign.center,
          style: getWhiteTextStyle(
              fontSize: FontSizeManager.f20,
              fontWeight: FontWeightManeger.semiBold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: AppSize.s20,
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
          BlocBuilder<PeopleLovedBloc, PeopleLovedState>(
              builder: (context, state) {
            if (state is PeopleLovedLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is PeopleLovedSuccess) {
              final users = state.userMatch;

              return users.isEmpty
                  ? Center(
                      child: Text(
                        'No Data User Match',
                        style: getWhiteTextStyle(),
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          return PeopleLovedCardWidget(user: users[index]);
                        },
                      ),
                    );
            }
            return Container();
          }),
        ],
      ),
    );
  }
}
