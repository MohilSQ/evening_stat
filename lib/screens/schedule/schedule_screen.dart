import 'package:evening_stat/res/constant/app_colors.dart';
import 'package:evening_stat/routes/routes_name.dart';
import 'package:evening_stat/screens/schedule/schedule_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../res/common/app_drop_down.dart';

class ScheduleScreen extends GetView<ScheduleController> {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF77ADD2),
      child: Column(
        children: [
          Obx(() {
            return AppDropDown(
              dropDownValue: controller.dropDownValue.value,
              dropDownList: controller.items!,
              onChange: (String? newValue) {
                controller.dropDownValue.value = newValue!;
              },
            );
          }),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              padding: EdgeInsets.only(bottom: 2.h),
              separatorBuilder: (context, index) => SizedBox(height: 2.h),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Get.toNamed(previewBinding);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD8EFFF),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(1.h),
                      bottomRight: Radius.circular(1.h),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 4,
                        spreadRadius: 3,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 3.5.h,
                        width: double.infinity,
                        color: const Color(0xFF0092E5),
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "19.03.2023",
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(flex: 4),
                            Text(
                              "19:00",
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(flex: 6),
                            Icon(
                              Icons.star_rounded,
                              color: const Color(0xFF808080),
                              size: 3.h,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.8.h, horizontal: 5.w),
                        child: Row(
                          children: [
                            Text(
                              "Club 1",
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              height: 0.2.h,
                              width: 4.w,
                              margin: EdgeInsets.symmetric(horizontal: 3.w),
                              color: AppColors.blackColor,
                            ),
                            Text(
                              "Club 2",
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.2.h, horizontal: 5.w).copyWith(top: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.4.h),
                              child: Column(
                                children: [
                                  Container(
                                    height: 2.3.h,
                                    width: 16.w,
                                    color: AppColors.lightAppColor,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "x1",
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        color: AppColors.whiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 2.3.h,
                                    width: 16.w,
                                    color: AppColors.lightSelectColor,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "1.65",
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        color: AppColors.whiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.4.h),
                              child: Column(
                                children: [
                                  Container(
                                    height: 2.3.h,
                                    width: 16.w,
                                    color: AppColors.lightAppColor,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "X",
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        color: AppColors.whiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 2.3.h,
                                    width: 16.w,
                                    color: AppColors.lightSelectColor,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "2.09",
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        color: AppColors.whiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.4.h),
                              child: Column(
                                children: [
                                  Container(
                                    height: 2.3.h,
                                    width: 16.w,
                                    color: AppColors.lightAppColor,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "x2",
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        color: AppColors.whiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 2.3.h,
                                    width: 16.w,
                                    color: AppColors.lightSelectColor,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "2.34",
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        color: AppColors.whiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
