import 'package:evening_stat/model/app_model.dart';
import 'package:evening_stat/res/constant/app_assets.dart';
import 'package:evening_stat/res/constant/app_strings.dart';
import 'package:evening_stat/screens/info/info_binding.dart';
import 'package:evening_stat/screens/info/info_screen.dart';
import 'package:evening_stat/screens/interest/interest_binding.dart';
import 'package:evening_stat/screens/interest/interest_screen.dart';
import 'package:evening_stat/screens/option/option_binding.dart';
import 'package:evening_stat/screens/option/option_screen.dart';
import 'package:evening_stat/screens/over/over_binding.dart';
import 'package:evening_stat/screens/over/over_screen.dart';
import 'package:evening_stat/screens/position/position_binding.dart';
import 'package:evening_stat/screens/position/position_screen.dart';
import 'package:evening_stat/screens/schedule/schedule_binding.dart';
import 'package:evening_stat/screens/schedule/schedule_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Widget? screen = Container();
  RxString whichScreen = AppStrings.position.obs;

  List<AppModel> bottomSheetList = [
    AppModel(image: AppAssets.position, title: AppStrings.position),
    AppModel(image: AppAssets.schedule, title: AppStrings.schedule),
    AppModel(image: AppAssets.option, title: AppStrings.option),
    AppModel(image: AppAssets.info, title: AppStrings.info),
  ];

  Widget screenData() {
    switch (whichScreen.value) {
      case AppStrings.position:
        return const PositionScreen();

      case AppStrings.schedule:
        return const ScheduleScreen();

      case AppStrings.over:
        return const OverScreen();

      case AppStrings.interest:
        return const InterestScreen();

      case AppStrings.option:
        return const OptionScreen();

      case AppStrings.info:
        return const InfoScreen();

      default:
        return Container();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    PositionBinding().dependencies();
    ScheduleBinding().dependencies();
    OverBinding().dependencies();
    InterestBinding().dependencies();
    OptionBinding().dependencies();
    InfoBinding().dependencies();
    super.onInit();
  }
}
