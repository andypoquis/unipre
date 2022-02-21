import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MenuaddmaterialController extends GetxController {
  RxInt index = 0.obs;
  RxString titlePage = ''.obs;
  RxList titlePageList = [
    'Agregar PDF',
    'Prueba Tipo A',
    'Prueba Tipo B',
  ].obs;
  PageController pageController = new PageController();

  changeIndex(int i) {
    index.value = i;
    pageController.jumpToPage(i);
  }

  // Add PDF
  TextEditingController titleController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();

  RxString valueSelectInput = 'Universidad Nacionar de San Martin'.obs;
}
