import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/common/app_drop_down.dart';

class ScheduleController extends GetxController {
  RxString dropDownValue = '1'.obs;

  List<DropdownMenuItem<String?>?>? items = [
    dropdownMenuItem("1"),
    dropdownMenuItem("2"),
    dropdownMenuItem("3"),
    dropdownMenuItem("4"),
    dropdownMenuItem("5"),
    dropdownMenuItem("6"),
    dropdownMenuItem("7"),
    dropdownMenuItem("8"),
  ];
}
