import 'package:evening_stat/screens/over/over_controller.dart';
import 'package:get/get.dart';

class OverBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<OverController>(OverController());
  }
}
