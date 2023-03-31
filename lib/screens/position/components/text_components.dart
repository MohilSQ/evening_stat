import 'package:evening_stat/res/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextComponents extends StatelessWidget {
  final String? text;
  const TextComponents({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Text(
        text!,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 10.sp,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
