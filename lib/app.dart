import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/features/auth/presentation/sign_up_screen.dart';
import 'package:simple_datting_app/src/features/auth/presentation/sign_up_upload_photo.dart';
import 'package:simple_datting_app/src/features/auth/presentation/singn_up_age_and_job_screen.dart';
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
      initialRoute: SignUpUploadPhotoSceen.routeName,
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpAgeJobScreen.routeName: (context) => const SignUpAgeJobScreen(),
        SignUpUploadPhotoSceen.routeName: (context) =>
            const SignUpUploadPhotoSceen()
      },
    );
  }
}
