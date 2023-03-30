import 'package:evening_stat/res/constant/app_assets.dart';
import 'package:evening_stat/res/constant/app_colors.dart';
import 'package:evening_stat/res/constant/app_strings.dart';
import 'package:evening_stat/screens/preview/preview_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PreviewScreen extends GetView<PreviewController> {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF77ADD2),
      appBar: AppBar(
        centerTitle: false,
        leading: const BackButton(),
        title: const Text(AppStrings.preview),
        backgroundColor: AppColors.lightAppColor,
        titleTextStyle: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(AppAssets.detailImage),
              Column(
                children: [
                  SizedBox(height: 2.h),
                  Text(
                    "19.03.2023",
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 0.2.h),
                  Text(
                    "19:00",
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              AppAssets.teamLogo,
                              height: 6.h,
                            ),
                            SizedBox(height: 0.6.h),
                            Text(
                              "Club 1",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "VS",
                          style: TextStyle(
                            fontSize: 36.sp,
                            color: AppColors.whiteColor.withOpacity(0.5),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              AppAssets.teamLogoTwo,
                              height: 6.h,
                            ),
                            SizedBox(height: 0.6.h),
                            Text(
                              "Club 2",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(3.h),
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 3.w),
                  decoration: BoxDecoration(
                    color: AppColors.lightAppColor,
                    borderRadius: BorderRadius.circular(2.h),
                    border: Border.all(
                      color: AppColors.lightSelectColor,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          itemCount: controller.categoryList.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          separatorBuilder: (context, index) => SizedBox(height: 1.h),
                          itemBuilder: (context, index) => Text(
                            controller.categoryList[index] + ":",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.lightSelectColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          itemCount: controller.categoryDataList.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          separatorBuilder: (context, index) => SizedBox(height: 1.h),
                          itemBuilder: (context, index) => Text(
                            controller.categoryDataList[index],
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  separatorBuilder: (context, index) => SizedBox(height: 3.h),
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.symmetric(vertical: 0.8.h, horizontal: 3.w),
                    decoration: BoxDecoration(
                      color: AppColors.lightAppColor,
                      borderRadius: BorderRadius.circular(2.h),
                      border: Border.all(
                        color: AppColors.lightSelectColor,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 1.1.h, horizontal: 0.9.h),
                              decoration: BoxDecoration(
                                color: Color(0xFF00223E),
                                borderRadius: BorderRadius.circular(1.h),
                              ),
                              child: Image.asset(
                                AppAssets.teamLogo,
                                height: 3.8.h,
                              ),
                            ),
                            SizedBox(height: 0.6.h),
                            Text(
                              "Club 1",
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 11.w),
                        ...[
                          Text(
                            "7",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xFF55D95B),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            ":",
                            style: TextStyle(
                              fontSize: 24.sp,
                              height: 0.9,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xFFFF3232),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                        SizedBox(width: 11.w),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 1.1.h, horizontal: 1.h),
                              decoration: BoxDecoration(
                                color: Color(0xFF00223E),
                                borderRadius: BorderRadius.circular(1.h),
                              ),
                              child: Image.asset(
                                AppAssets.teamLogoTwo,
                                height: 3.9.h,
                              ),
                            ),
                            SizedBox(height: 0.6.h),
                            Text(
                              "Club 2",
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
