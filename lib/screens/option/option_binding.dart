import 'package:evening_stat/screens/option/option_controller.dart';
import 'package:get/get.dart';

class OptionBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<OptionController>(OptionController());
  }
}
