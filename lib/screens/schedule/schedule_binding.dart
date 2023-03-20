import 'package:evening_stat/screens/schedule/schedule_controller.dart';
import 'package:get/get.dart';

class ScheduleBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<ScheduleController>(ScheduleController());
  }
}
