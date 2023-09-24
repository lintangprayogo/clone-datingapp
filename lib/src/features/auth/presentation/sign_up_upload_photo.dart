import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_datting_app/src/common_widgets/custom_button_widget.dart';
import 'package:simple_datting_app/src/common_widgets/custom_text_button.dart';
import 'package:simple_datting_app/src/common_widgets/logo_and_tagline_widget.dart';
import 'package:simple_datting_app/src/common_widgets/upload_photo_widget.dart';
import 'package:simple_datting_app/src/features/auth/domain/user_account.dart';
import 'package:simple_datting_app/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:simple_datting_app/src/features/loves_page/presentation/explore_people_screen.dart';
import 'package:simple_datting_app/src/theme_manager/font_manager.dart';
import 'package:simple_datting_app/src/theme_manager/style_manager.dart';
import 'package:simple_datting_app/src/theme_manager/values_manager.dart';
import 'package:simple_datting_app/src/utils/image_picker_util.dart';

class SignUpUploadPhotoSceen extends StatefulWidget {
  static const String routeName = "/sign-up-upload-photo";

  const SignUpUploadPhotoSceen({super.key});

  @override
  State<SignUpUploadPhotoSceen> createState() => _SignUpUploadPhotoSceenState();
}

class _SignUpUploadPhotoSceenState extends State<SignUpUploadPhotoSceen> {
  File? image;

  void getImageProfile(GetImageFrom source) async {
    final result = await ImagePickerUtil.getImage(source);
    if (result != null) {
      setState(() {
        image = File(result.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    UserAccount userAccount =
        ModalRoute.of(context)?.settings.arguments as UserAccount;
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, ExplorePeopleScreen.routeName, (route) => false);
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: AppPadding.p50, horizontal: AppPadding.p24),
          child: SingleChildScrollView(
              child: Column(
            children: [
              const LogoAndTagLineWidget(),
              const SizedBox(
                height: AppSize.s50,
              ),
              GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: const EdgeInsets.all(AppPadding.p24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  iconSize: AppSize.s50,
                                  onPressed: () {
                                    getImageProfile(GetImageFrom.camera);
                                  },
                                  icon: const Icon(Icons.camera)),
                              IconButton(
                                  iconSize: AppSize.s50,
                                  onPressed: () {
                                    getImageProfile(GetImageFrom.gallery);
                                  },
                                  icon: const Icon(Icons.photo))
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: UploadPhotoWidget(
                    image: image,
                  )),
              const SizedBox(
                height: 53,
              ),
              Text(
                userAccount.fullName,
                style: getWhiteTextStyle(
                    fontSize: 22, fontWeight: FontWeightManeger.semiBold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text("${userAccount.age}, ${userAccount.job}",
                  style: getBlack60TextStyle()),
              const SizedBox(
                height: 240,
              ),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is AuthLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return CustomButtonWidget(
                    label: 'Update My Profile',
                    onTap: () async {
                      if (image == null) {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('No Image Update'),
                          ),
                        );
                        return;
                      }
                      userAccount.imageProfile = image!.path;
                      if (mounted) {
                        context.read<AuthBloc>().add(
                              RegisterAuthEvent(
                                userAccount: userAccount,
                                isRegister: true,
                              ),
                            );
                      }
                    },
                  );
                },
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              CustomTextButtonWidget(
                label: 'Skip for Now',
                onPressed: () {
                  context.read<AuthBloc>().add(
                        RegisterAuthEvent(
                          userAccount: userAccount,
                          isRegister: true,
                        ),
                      );
                },
              ),
            ],
          )),
        ),
      ),
    );
  }
}
