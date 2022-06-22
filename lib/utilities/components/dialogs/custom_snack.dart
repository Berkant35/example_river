import 'package:firebase_deneme/utilities/constants/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../init/theme/custom_color.dart';


class CustomSnackBar {
  String? message;
  CustomSnackBar({required this.message});
  CustomSnackBar._();

  static buildErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: CustomColors.crimson,
        behavior: SnackBarBehavior.fixed,
        elevation: 2,

        content: Container(
            height: MediaQueryExtension(context).height / 25,
            width: MediaQueryExtension(context).width * 0.95,
            child: Center(
                child: Text(
                  message,
                  style: ThemeValueExtension.body2,
                ))),
      ),
    );
  }
}