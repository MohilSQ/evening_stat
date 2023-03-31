import 'package:evening_stat/res/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AppDropDown extends StatelessWidget {
  final String? dropDownValue;
  final List<DropdownMenuItem<String?>?>? dropDownList;
  final Function(String?)? onChange;
  const AppDropDown({Key? key, this.dropDownValue, this.dropDownList, this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: DropdownButton<String?>(
              value: dropDownValue,
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
              selectedItemBuilder: (context) => dropDownList!
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
                              value!.value!,
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
              items: (dropDownList)!.map((items) {
                return items!;
              }).toList(),
              onChanged: onChange,
            ),
          ),
        ],
      ),
    );
  }
}

DropdownMenuItem<String?>? dropdownMenuItem(String? items) {
  return DropdownMenuItem<String?>(
    value: items,
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(items!),
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
}
