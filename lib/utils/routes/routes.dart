import 'package:evening_stat/screens/home/home_binding.dart';
import 'package:evening_stat/screens/home/home_screen.dart';
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
import 'package:get/get.dart';

class Routes {
  static List<GetPage> pages = [
    GetPage(name: homeScreen, page: () => const HomeScreen(), binding: HomeBinding()),
    GetPage(name: positionBinding, page: () => const PositionScreen(), binding: PositionBinding()),
    GetPage(name: scheduleBinding, page: () => const ScheduleScreen(), binding: ScheduleBinding()),
    GetPage(name: overBinding, page: () => const OverScreen(), binding: OverBinding()),
    GetPage(name: interestBinding, page: () => const InterestScreen(), binding: InterestBinding()),
    GetPage(name: optionBinding, page: () => const OptionScreen(), binding: OptionBinding()),
    GetPage(name: infoBinding, page: () => const InfoScreen(), binding: InfoBinding()),
  ];
}
