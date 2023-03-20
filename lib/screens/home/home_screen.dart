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
            title: Obx(() => Text(controller.whichScreen.value)),
            backgroundColor: AppColors.lightAppColor,
            titleTextStyle: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          body: Navigator(
            key: Get.nestedKey(1),
            initialRoute: controller.whichScreen.value,
            onGenerateRoute: controller.onGenerateRoute,
          ),
          bottomSheet: Container(
            height: MediaQuery.of(context).padding.bottom + 6.h,
            width: MediaQuery.of(context).size.width,
            color: AppColors.lightAppColor,
            padding: EdgeInsets.only(top: 1.8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: controller.bottomSheetList
                  .map((value) => GestureDetector(
                        onTap: () {
                          controller.whichScreen.value = value.routes!;
                        },
                        child: Column(
                          children: [
                            Obx(() {
                              return Image.asset(
                                value.image!,
                                height: 3.h,
                                width: 3.h,
                                color: controller.whichScreen.value == value.routes ? AppColors.lightSelectColor : AppColors.lightUnSelectColor,
                              );
                            }),
                            SizedBox(height: 0.6.h),
                            Obx(() {
                              return Text(
                                value.title!,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 9.sp,
                                  color: controller.whichScreen.value == value.routes ? AppColors.lightSelectColor : AppColors.lightUnSelectColor,
                                ),
                              );
                            }),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.lightAppColor,
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 9.sp,
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 9.sp,
            ),
            currentIndex: 1,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: IconThemeData(color: AppColors.lightSelectColor),
            unselectedIconTheme: IconThemeData(color: AppColors.lightUnSelectColor),
            // selectedItemColor: AppColors.lightSelectColor,
            // unselectedItemColor: AppColors.lightUnSelectColor,
            onTap: (value) {
              // controller.whichScreen.value = value;
            },
            items: controller.bottomSheetList
                .map(
                  (value) => BottomNavigationBarItem(
                    icon: Image.asset(
                      value.image!,
                      height: 3.h,
                      width: 3.h,
                    ),
                    label: value.title!,
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
