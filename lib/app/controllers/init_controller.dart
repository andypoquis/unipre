import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unipre/app/routes/app_pages.dart';
import 'package:unipre/app/ui/theme/color.dart';

class InitController extends GetxController {
  RxInt indexCorosel = 0.obs;
  MaterialColor colorChanged() {
    MaterialColor color = color_subtitle;

    switch (indexCorosel.value) {
      case 3:
        color = color_title;
        break;
      case 1:
        color = color_subtitle;
        break;
      case 2:
        color = color_title;
        break;
    }

    return color;
  }

  naviagonPage() {
    Get.toNamed(Routes.LOGIN);
  }
}
