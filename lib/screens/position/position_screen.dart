import 'package:evening_stat/res/constant/app_assets.dart';
import 'package:evening_stat/res/constant/app_colors.dart';
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
          Container(
            height: AppBar().preferredSize.height + MediaQuery.of(context).padding.top,
            width: double.infinity,
            color: AppColors.lightAppColor,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, bottom: 1.5.h),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                SizedBox(
                  height: 4.5.h,
                  child: DropdownButton(
                    value: controller.dropDownValue.value,
                    underline: const SizedBox(),
                    isExpanded: false,
                    isDense: false,
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
                        .map((value) => Container(
                              height: 3.h,
                              width: Get.width * 0.8,
                              padding: EdgeInsets.only(right: 5.w, left: 7.w),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.lightSelectColor, width: 3),
                                borderRadius: BorderRadius.circular(3.h),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    value,
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white,
                                    size: 4.h,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                    items: controller.items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(items),
                            Container(
                              height: 0.4.h,
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 6.w),
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
                  ),
                ),
              ],
            ),
          ),
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
