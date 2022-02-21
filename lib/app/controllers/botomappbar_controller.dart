import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:unipre/app/routes/app_pages.dart';

class BotomappbarController extends GetxController {
  RxBool isClick = false.obs;
  RxBool isColor = true.obs;
  PageController pageController = new PageController();

  changePage() {
    pageController.jumpToPage((isColor.value) ? 0 : 1);
    isColor.value = !isColor.value;
  }

  changeColor() {
    if (isColor.value) {
      isColor.value = false;
      pageController.jumpToPage(0);
    }
  }

  changeColor2() {
    if (!isColor.value) {
      isColor.value = true;
      pageController.jumpToPage(1);
    }
  }

  navigatorNotifyPage() {
    Get.toNamed(Routes.NOTIFY);
  }

  navigatorMenuAddMaterial() {
    Get.toNamed(Routes.MENUADDMATERIAL);
  }
}
