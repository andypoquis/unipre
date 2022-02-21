
import 'package:get/get.dart';
import '../controllers/menuaddmaterial_controller.dart';


class MenuaddmaterialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuaddmaterialController>(() => MenuaddmaterialController());
  }
}