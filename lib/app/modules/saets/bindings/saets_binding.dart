import 'package:get/get.dart';

import '../controllers/saets_controller.dart';

class SaetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SaetsController>(
      () => SaetsController(),
    );
  }
}
