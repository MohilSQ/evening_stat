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
    return Column(
      children: [
        Container(
          height: 5.h,
          width: double.infinity,
          color: AppColors.lightAppColor,
          child: Wrap(
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              SizedBox(
                height: 3.5.h,
                width: Get.width * 0.8,
                child: DropdownButton(
                  value: controller.dropDownValue.value,
                  underline: const SizedBox(),
                  isDense: false,
                  isExpanded: false,
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
                            height: 4.h,
                            width: Get.width * 0.8,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.lightSelectColor, width: 3),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.transparent,
                                  size: 3.h,
                                ),
                                const Spacer(),
                                Text(
                                  value,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.whiteColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white,
                                  size: 3.h,
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
          columnWidths: {
            0: FlexColumnWidth(12.w),
            1: FlexColumnWidth(6.w),
            2: FlexColumnWidth(6.w),
            3: FlexColumnWidth(6.w),
            4: FlexColumnWidth(6.w),
            5: FlexColumnWidth(6.w),
            6: FlexColumnWidth(11.w),
            7: FlexColumnWidth(11.w),
            8: FlexColumnWidth(9.w),
            9: FlexColumnWidth(10.w),
          },
          children: [
            TableRow(
              decoration: BoxDecoration(color: AppColors.lightButtonColorSecond),
              children: [
                Text("Team", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, color: AppColors.whiteColor)),
                Text("P", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, color: AppColors.whiteColor)),
                Text("W", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, color: AppColors.whiteColor)),
                Text("L", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, color: AppColors.whiteColor)),
                Text("G+", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, color: AppColors.whiteColor)),
                Text("G-", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, color: AppColors.whiteColor)),
                Text("Score", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, color: AppColors.whiteColor)),
                Text("pct(%)", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, color: AppColors.whiteColor)),
                Text("G+/-", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, color: AppColors.whiteColor)),
                Text("%G+-", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.sp, color: AppColors.whiteColor)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
