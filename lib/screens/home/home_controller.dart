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
import 'package:evening_stat/utils/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Widget? screen = Container();
  RxString whichScreen = positionBinding.obs;

  List<AppModel> bottomSheetList = [
    AppModel(image: AppAssets.position, title: AppStrings.position, routes: positionBinding),
    AppModel(image: AppAssets.schedule, title: AppStrings.schedule, routes: scheduleBinding),
    AppModel(image: AppAssets.option, title: AppStrings.option, routes: optionBinding),
    AppModel(image: AppAssets.info, title: AppStrings.info, routes: infoBinding),
  ];

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case positionBinding:
        return GetPageRoute(settings: settings, page: () => const PositionScreen(), binding: PositionBinding());

      case scheduleBinding:
        return GetPageRoute(settings: settings, page: () => const ScheduleScreen(), binding: ScheduleBinding());

      case overBinding:
        return GetPageRoute(settings: settings, page: () => const OverScreen(), binding: OverBinding());

      case interestBinding:
        return GetPageRoute(settings: settings, page: () => const InterestScreen(), binding: InterestBinding());

      case optionBinding:
        return GetPageRoute(settings: settings, page: () => const OptionScreen(), binding: OptionBinding());

      case infoBinding:
        return GetPageRoute(settings: settings, page: () => const InfoScreen(), binding: InfoBinding());

      default:
        return GetPageRoute(settings: settings, page: () => const PositionScreen(), binding: PositionBinding());
    }
  }
}
