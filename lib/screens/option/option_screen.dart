import 'dart:ui';

import 'package:another_xlider/another_xlider.dart';
import 'package:evening_stat/res/common/app_button.dart';
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
                      fontSize: 16.sp,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  AppButton(
                    title: "On",
                    onPressed: () {},
                  ),
                  SizedBox(width: 4.w),
                  AppButton(
                    title: "Off",
                    disableButton: true,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Text(
                    "Choose League",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 3.3.h,
                    width: 38.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.h),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.lightButtonColorFirst,
                          AppColors.lightButtonColorSecond,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Obx(() {
                      return DropdownButton(
                        value: controller.dropDownValue.value,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        underline: const SizedBox(),
                        isDense: true,
                        isExpanded: true,
                        alignment: Alignment.center,
                        borderRadius: BorderRadius.circular(1.h),
                        iconSize: 0,
                        dropdownColor: AppColors.lightButtonColorSecond,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                        hint: Text(
                          "No league",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        selectedItemBuilder: (context) => controller.items
                            .map(
                              (e) => Text(
                                e,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                            .toList(),
                        items: controller.items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(items),
                                Container(
                                  height: 0.4.h,
                                  width: 27.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.lightSelectColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(0.2.h),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          controller.dropDownValue.value = newValue!;
                        },
                      );
                    }),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 1.45.h),
                    child: FlutterSlider(
                      values: const [1],
                      max: 24,
                      min: 0,
                      selectByTap: true,
                      onDragging: (handlerIndex, lowerValue, upperValue) {
                        // _lowerValue = lowerValue;
                        // _upperValue = upperValue;
                      },
                      step: const FlutterSliderStep(step: 1),
                      jump: true,
                      visibleTouchArea: false,
                      touchSize: 10,
                      handlerHeight: 0,
                      handler: FlutterSliderHandler(
                        decoration: const BoxDecoration(),
                        child: const SizedBox(),
                      ),
                      tooltip: FlutterSliderTooltip(
                        boxStyle: const FlutterSliderTooltipBox(decoration: BoxDecoration()),
                        format: (value) => "",
                      ),
                      trackBar: FlutterSliderTrackBar(
                        activeTrackBarHeight: 2.6.h,
                        inactiveTrackBarHeight: 2.6.h,
                        inactiveTrackBar: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.3.h),
                          color: Colors.white,
                        ),
                        activeTrackBar: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.3.h),
                          gradient: LinearGradient(
                            colors: [
                              AppColors.lightButtonColorFirst,
                              AppColors.lightButtonColorSecond,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: controller.steps
                          .map((value) => SizedBox(
                                width: 2.8.w,
                                child: Column(
                                  children: [
                                    Text(
                                      value,
                                      style: TextStyle(
                                        fontSize: 5.5.sp,
                                        color: AppColors.whiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 0.3.h),
                                    Container(
                                      height: (int.parse(value) % 2 == 0) ? 1.4.h : 1.h,
                                      width: 0.5.w,
                                      color: AppColors.whiteColor,
                                    ),
                                  ],
                                ),
                              ))
                          .toList()),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
