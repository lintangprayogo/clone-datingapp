import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/features/auth/presentation/sign_up_screen.dart';
import 'package:simple_datting_app/src/features/auth/presentation/sign_up_upload_photo.dart';
import 'package:simple_datting_app/src/features/auth/presentation/sign_up_age_and_job_screen.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/explore_people_screen.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/people_loved_screen.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/people_profile_screen.dart';
import 'package:simple_datting_app/src/theme_manager/theme_data_manager.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getApplicationThemeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: PeopleProfileScreen.routeName,
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpAgeJobScreen.routeName: (context) => const SignUpAgeJobScreen(),
        SignUpUploadPhotoSceen.routeName: (context) =>
            const SignUpUploadPhotoSceen(),
        ExplorePeopleScreen.routeName: (context) => const ExplorePeopleScreen(),
        PeopleLovedScreen.routeName: (context) => const PeopleLovedScreen(),
        PeopleProfileScreen.routeName: (context) => const PeopleProfileScreen()
      },
    );
  }
}
