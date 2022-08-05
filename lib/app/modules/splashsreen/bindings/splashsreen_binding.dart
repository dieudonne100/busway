import 'package:get/get.dart';

import '../controllers/splashsreen_controller.dart';

class SplashsreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashsreenController>(
      () => SplashsreenController(),
    );
  }
}
