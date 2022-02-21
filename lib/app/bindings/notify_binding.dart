
import 'package:get/get.dart';
import '../controllers/notify_controller.dart';


class NotifyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotifyController>(() => NotifyController());
  }
}