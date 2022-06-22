import 'package:flutter/material.dart';

import '../../init/theme/custom_color.dart';
import 'EdgeExtension.dart';
import 'context_extension.dart';


extension DecorationExtension on InputDecoration {
  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
        contentPadding: EdgeInsets.all(EdgeExtension.normalEdge.edgeValue),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(EdgeExtension.normalEdge.edgeValue)),
          borderSide: const BorderSide(color: CustomColors.athensGray, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(EdgeExtension.mediumEdge.edgeValue)),
          borderSide: const BorderSide(color: CustomColors.athensGray, width: 1.0),
        ),
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        hintText: hintText,
        focusedErrorBorder: InputBorder.none,
        border: const OutlineInputBorder(),
        hintStyle: const TextStyle(color: CustomColors.athensGray));
  }

  static InputDecoration customInputDecorationEmailSellDiamond(
      String hintText, InputBorder outlineBorder, double horizontalPadding) {
    return InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        prefixStyle:
            ThemeValueExtension.subtitle2.copyWith(fontWeight: FontWeight.w600),
        fillColor: CustomColors.athensGray.withOpacity(0.50),
        focusColor: CustomColors.athensGray.withOpacity(0.50),
        hoverColor: CustomColors.athensGray.withOpacity(0.90),
        border: outlineBorder,
        hintText: 'Email',
        hintStyle: ThemeValueExtension.subtitle2
            .copyWith(fontWeight: FontWeight.w500, color: CustomColors.athensGray),
        focusedBorder: outlineBorder,
        enabledBorder: outlineBorder,
        errorBorder: outlineBorder,
        focusedErrorBorder: outlineBorder,
        disabledBorder: outlineBorder,
        counterText: '');
  }

  static InputDecoration phoneInputDecoration(TextEditingController _controller) {
    return InputDecoration(
      counterText: '',
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      contentPadding: EdgeInsets.all(EdgeExtension.normalEdge.edgeValue),

    );
  }
}

extension BoxExtension on BoxDecoration {
  BoxDecoration customBoxDecoration() {
    return BoxDecoration(
        border: Border.all(width: 0.80, color: CustomColors.athensGray),
        color: CustomColors.athensGray,
        borderRadius:
            BorderRadius.all(Radius.circular(EdgeExtension.lowEdge.edgeValue)));
  }
}


