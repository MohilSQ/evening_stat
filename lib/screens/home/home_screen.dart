import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../res/constant/app_colors.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (logic) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Obx(() => Text(controller.whichScreen.value)),
            backgroundColor: AppColors.lightAppColor,
            titleTextStyle: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          body: Obx(() => controller.screenData()),
          bottomNavigationBar: Container(
            height: MediaQuery.of(context).padding.bottom + 8.h,
            width: MediaQuery.of(context).size.width,
            color: AppColors.lightAppColor,
            padding: EdgeInsets.only(top: 1.8.h, bottom: MediaQuery.of(context).padding.bottom),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: controller.bottomSheetList
                  .map((value) => InkWell(
                        onTap: () {
                          controller.whichScreen.value = value.title!;
                        },
                        child: Container(
                          width: 7.h,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Obx(() {
                                return Image.asset(
                                  value.image!,
                                  height: 3.h,
                                  width: 3.h,
                                  color: controller.whichScreen.value == value.title ? AppColors.lightSelectColor : AppColors.lightUnSelectColor,
                                );
                              }),
                              SizedBox(height: 0.6.h),
                              Obx(() {
                                return Text(
                                  value.title!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 9.sp,
                                    color: controller.whichScreen.value == value.title ? AppColors.lightSelectColor : AppColors.lightUnSelectColor,
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
