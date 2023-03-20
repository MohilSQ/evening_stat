import 'package:evening_stat/screens/position/position_controller.dart';
import 'package:get/get.dart';

class PositionBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<PositionController>(PositionController());
  }
}
