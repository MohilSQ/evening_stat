import 'dart:ui';

import 'package:evening_stat/res/constant/app_assets.dart';
import 'package:evening_stat/res/constant/app_colors.dart';
import 'package:evening_stat/screens/option/option_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OptionScreen extends GetView<OptionController> {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.lightBG,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 3.5,
            sigmaY: 3.5,
          ),
          child: Container(
            color: AppColors.blurColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Sound",
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 2.8.h,
                    width: 18.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.lightButtonColorFirst,
                          AppColors.lightButtonColorSecond,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(1.5.h),
                    ),
                    child: Text(
                      "On",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Container(
                    height: 2.8.h,
                    width: 18.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.lightUnButtonColorFirst,
                          AppColors.lightUnButtonColorSecond,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(1.5.h),
                    ),
                    child: Text(
                      "Off",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: AppColors.lightUnButtonTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
