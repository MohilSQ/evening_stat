import 'package:evening_stat/res/constant/app_colors.dart';
import 'package:flutter/material.dart';
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
    this.disableButton = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 2.8.h,
      width: width ?? 18.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.h),
        gradient: LinearGradient(
          colors: disableButton!
              ? [
                  AppColors.lightUnButtonColorFirst,
                  AppColors.lightUnButtonColorSecond,
                ]
              : [
                  AppColors.lightButtonColorFirst,
                  AppColors.lightButtonColorSecond,
                ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ElevatedButton(
        onPressed: disableButton! ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.transparentColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.h)),
        ),
        child: title.isNotEmpty
            ? Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: disableButton! ? AppColors.lightUnButtonTextColor : AppColors.whiteColor,
                  fontSize: fontSize ?? 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
