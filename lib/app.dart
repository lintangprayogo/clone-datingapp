import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/features/auth/data/data_user_account_local.dart';
import 'package:simple_datting_app/src/features/auth/presentation/sign_up_screen.dart';
import 'package:simple_datting_app/src/features/auth/presentation/sign_up_upload_photo.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/explore_people_screen.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/people_loved_screen.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/people_profile_screen.dart';
import 'package:simple_datting_app/src/theme_manager/theme_data_manager.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({
    super.key,
  });

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  bool isRegister = false;

  isUserRegister() async {
    isRegister = await UserAccountRegister.getUserAccountRegister();
    setState(() {});
  }

  @override
  void initState() {
    isUserRegister();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getApplicationThemeData(),
      debugShowCheckedModeBanner: false,
      home: isRegister ? const ExplorePeopleScreen() : const SignUpScreen(),
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpUploadPhotoSceen.routeName: (context) =>
            const SignUpUploadPhotoSceen(),
        ExplorePeopleScreen.routeName: (context) => const ExplorePeopleScreen(),
        PeopleLovedScreen.routeName: (context) => const PeopleLovedScreen(),
        PeopleProfileScreen.routeName: (context) => const PeopleProfileScreen()
      },
    );
  }
}
