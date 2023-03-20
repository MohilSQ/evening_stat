import 'package:evening_stat/screens/info/info_controller.dart';
import 'package:get/get.dart';

class InfoBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<InfoController>(InfoController());
  }
}
