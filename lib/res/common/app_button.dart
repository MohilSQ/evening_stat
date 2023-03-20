import 'package:evening_stat/res/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatelessWidget {
  final String title;
  final double? width;
  final double? height;
  final double? fontSize;
  final bool? disableButton;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.title,
    this.width,
    this.height,
    this.fontSize,
    this.disableButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width,
      height: height ?? 54,
      child: ElevatedButton(
        onPressed: disableButton! ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.h)),
        ),
        child: title.isNotEmpty
            ? Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: disableButton! ? AppColors.lightUnButtonTextColor : AppColors.whiteColor,
                  fontSize: fontSize ?? 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
