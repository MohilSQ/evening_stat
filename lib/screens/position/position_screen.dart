import 'package:evening_stat/res/constant/app_colors.dart';
import 'package:evening_stat/screens/position/position_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PositionScreen extends GetView<PositionController> {
  const PositionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
              9: FlexColumnWidth(9.w),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: AppColors.lightButtonColorSecond),
                children: [
                  Text("Team"),
                  Text("P"),
                  Text("W"),
                  Text("L"),
                  Text("G+"),
                  Text("G-"),
                  Text("Score"),
                  Text("pct(%)"),
                  Text("G+/-"),
                  Text("%G+-"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
