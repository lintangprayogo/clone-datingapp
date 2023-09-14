import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Material App Bar"),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset('${AssetImageIconManager.assetPath}hobby1_image.png'),
              Image.asset('${AssetImageIconManager.assetPath}hobby2_image.png'),
            ],
          ),
        ),
      ),
    );
  }
}
