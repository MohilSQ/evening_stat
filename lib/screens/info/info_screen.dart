import 'dart:ui';

import 'package:evening_stat/res/constant/app_assets.dart';
import 'package:evening_stat/res/constant/app_colors.dart';
import 'package:evening_stat/res/constant/app_strings.dart';
import 'package:evening_stat/screens/info/info_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class InfoScreen extends GetView<InfoController> {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.info),
        backgroundColor: AppColors.lightAppColor,
        titleTextStyle: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Stack(
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
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Text(
                AppStrings.infoDes,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
