import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/common_widgets/logo_widget.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';

class LogoAndTagLineWidget extends StatelessWidget {
  const LogoAndTagLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LogoWidget(),
        const SizedBox(
          height: AppSize.s6,
        ),
        Text(
          'Find your pefect love.',
          style: getWhiteTextStyle(),
        )
      ],
    );
  }
}
