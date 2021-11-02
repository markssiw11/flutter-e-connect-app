import 'package:e_connect_app/configs/app_colors.dart';
import 'package:e_connect_app/extensions/color.dart';
import 'package:flutter/material.dart';

class CommonStyle {
  static InputDecoration textFieldStyle(
      {String labelTextStr = "", String hintTextStr = "", Widget? suffixIcon}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(12),
      labelText: labelTextStr,
      hintText: hintTextStr,
      fillColor: AppColors.whiteColor,
      filled: true,
      errorStyle: TextStyle(color: HexColor('#57657F')),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.athensGrayColor, width: 1.0),
        borderRadius: BorderRadius.circular(8),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      suffixIcon: suffixIcon,
    );
  }

  static TextStyle labelStyle = TextStyle(
      color: AppColors.cometColor, fontSize: 12, fontWeight: FontWeight.w600);

  static ButtonStyle formFieldDecoration(String? errorMsg) {
    return OutlinedButton.styleFrom(
      backgroundColor: AppColors.whiteColor,
      elevation: 0.0,
      side: BorderSide(
          color: errorMsg == null ? AppColors.athensGrayColor : Colors.red),
      shadowColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  static ButtonStyle buttonStyle({backgroundColor}) {
    return ElevatedButton.styleFrom(
        primary: backgroundColor ?? AppColors.athensGrayColor,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // <-- Radius
        ));
  }
}
