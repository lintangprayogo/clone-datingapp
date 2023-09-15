import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/features/auth/presentation/sign_up_screen.dart';
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
      initialRoute: SignUpScreen.routeName,
      routes: {SignUpScreen.routeName: (context) => const SignUpScreen()},
    );
  }
}
