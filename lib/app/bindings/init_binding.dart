
import 'package:get/get.dart';
import '../controllers/init_controller.dart';


class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitController>(() => InitController());
  }
}