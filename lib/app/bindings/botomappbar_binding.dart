
import 'package:get/get.dart';
import '../controllers/botomappbar_controller.dart';


class BotomappbarBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BotomappbarController>(() => BotomappbarController());
  }
}