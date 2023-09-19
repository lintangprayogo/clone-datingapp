import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_datting_app/src/theme_manager/asset_collor_manager.dart';
import 'package:simple_datting_app/src/theme_manager/asset_image_icon_manager.dart';

class UploadPhotoWidget extends StatelessWidget {
  final File? image;
  const UploadPhotoWidget({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.secondary,
              border: Border.all(
                  color: ColorManager.secondary,
                  width: 8.0,
                  strokeAlign: BorderSide.strokeAlignOutside)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: image != null
                ? Image(
                    image: FileImage(image!),
                    fit: BoxFit.cover,
                  )
                : const Image(
                    image: AssetImage(
                        "${AssetImageIconManager.assetPath}profile_icon.png"),
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        const Positioned(
          bottom: -25.0,
          child: SizedBox(
            width: 50,
            height: 50,
            child: Image(
                image: AssetImage(
                    "${AssetImageIconManager.assetPath}icon_add_color.png")),
          ),
        )
      ],
    );
  }
}
