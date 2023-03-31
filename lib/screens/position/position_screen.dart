import 'package:evening_stat/res/common/app_drop_down.dart';
import 'package:evening_stat/res/constant/app_assets.dart';
import 'package:evening_stat/res/constant/app_colors.dart';
import 'package:evening_stat/screens/position/components/text_components.dart';
import 'package:evening_stat/screens/position/position_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utils/utils.dart';

class PositionScreen extends GetView<PositionController> {
  const PositionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Utils.darkStatusBar();
    return Container(
      color: const Color(0xFF77ADD2),
      child: Column(
        children: [
          Obx(() {
            return AppDropDown(
              dropDownValue: controller.dropDownValue.value,
              dropDownList: controller.items,
              onChange: (String? newValue) {
                controller.dropDownValue.value = newValue!;
              },
            );
          }),
          Table(
            textDirection: TextDirection.ltr,
            border: TableBorder.all(
              width: 2,
              color: AppColors.lightSelectColor,
            ),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: const {
              0: IntrinsicColumnWidth(flex: 3),
              1: IntrinsicColumnWidth(flex: 1),
              2: IntrinsicColumnWidth(flex: 1),
              3: IntrinsicColumnWidth(flex: 1),
              4: IntrinsicColumnWidth(flex: 1),
              5: IntrinsicColumnWidth(flex: 1),
              6: IntrinsicColumnWidth(flex: 2),
              7: IntrinsicColumnWidth(flex: 2),
              8: IntrinsicColumnWidth(flex: 2),
              9: IntrinsicColumnWidth(flex: 2),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: AppColors.lightButtonColorSecond),
                children: [
                  Text("Team", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("P", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("W", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("L", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("G+", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("G-", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("Score", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("pct(%)", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("G+/-", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.9.h),
                    child: Text("%G+-", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  TextComponents(text: "1"),
                  TextComponents(text: "11"),
                  TextComponents(text: "11"),
                  TextComponents(text: "11"),
                  TextComponents(text: "11"),
                  TextComponents(text: "111"),
                  TextComponents(text: "111"),
                  TextComponents(text: "111"),
                  TextComponents(text: "3"),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  Text("1", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text("3", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  Text("1", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text("3", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  Text("1", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text("3", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  Text("1", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text("3", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  Text("1", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text("3", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  Text("1", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text("3", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  Text("1", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text("3", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  Text("1", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text("3", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  Text("1", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text("3", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  Text("1", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text("3", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(color: Color(0xFF77ADD2)),
                children: [
                  Image.asset(AppAssets.teamLogoTwo, height: 4.h),
                  Text("1", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("11", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Text("111", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text("3", textAlign: TextAlign.center, style: TextStyle(fontSize: 10.sp, color: AppColors.whiteColor)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
