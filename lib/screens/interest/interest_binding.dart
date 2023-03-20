import 'package:evening_stat/screens/interest/interest_controller.dart';
import 'package:get/get.dart';

class InterestBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<InterestController>(InterestController());
  }
}
