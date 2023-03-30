import 'package:evening_stat/screens/preview/preview_controller.dart';
import 'package:get/get.dart';

class PreviewBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<PreviewController>(PreviewController());
  }
}
