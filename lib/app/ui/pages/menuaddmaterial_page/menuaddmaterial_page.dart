import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unipre/app/ui/theme/color.dart';
import '../../../controllers/menuaddmaterial_controller.dart';

class MenuaddmaterialPage extends GetView<MenuaddmaterialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: color_title,
        elevation: 0,
        title: Obx(() {
          return Text(controller.titlePageList[controller.index.value],
              style: const TextStyle(color: color_title));
        }),
      ),
      body: SafeArea(
          child: PageView(
        onPageChanged: (int index) => controller.index.value = index,
        controller: controller.pageController,
        children: [
          ListView(
            children: [
              addPDF(),
            ],
          ),
          ListView(
            children: [
              addPDF(),
            ],
          ),
          ListView(
            children: [
              addPDF(),
            ],
          ),
        ],
      )),
      bottomNavigationBar: _buildBottomAppBar(context),
    );
  }

  Widget _buildBottomAppBar(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: Obx(() {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: controller.index.value,
          onTap: (int index) => controller.changeIndex(index),

          showUnselectedLabels:
              false, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.picture_as_pdf),
              label: 'PDF',
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.quiz),
              label: 'Prueba A',
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.assignment), label: 'Prueba B')
          ],
        );
      }),
    );
  }

  Widget addPDF() {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Obx((() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              label('Titulo'),
              spacing(10),
              inputText(1, 35, controller.descriptionController),
              spacing(20),
              label('Universidad'),
              spacing(10),
              selectInput(),
              spacing(20),
              label('Area'),
              spacing(10),
              selectInput(),
              spacing(20),
              label('Descripción'),
              spacing(10),
              inputText(
                3,
                120,
                controller.titleController,
              ),
              spacing(25),
              // ignore: unrelated_type_equality_checks
              (controller.index != 1) ? containerPDF() : Container(),
              spacing(25),
              // ignore: unrelated_type_equality_checks
              (controller.index == 0)
                  ? buttomAction('Agregar')
                  : buttomAction('Continuar'),
              spacing(25),
            ],
          );
        })));
  }

  Widget spacing(double size) {
    return SizedBox(
      height: size,
    );
  }

  Widget label(String text) {
    return Text(text,
        style:
            const TextStyle(color: color_title, fontWeight: FontWeight.bold));
  }

  Widget inputText(
      int maxLines, int maxLength, TextEditingController textController) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextField(
        maxLines: maxLines,
        maxLength: maxLength,
        controller: textController,
        decoration: const InputDecoration(
            border: InputBorder.none, filled: true, fillColor: bg_color02),
      ),
    );
  }

  Widget selectInput() {
    return Obx(() {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bg_color02,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
              value: controller.valueSelectInput.value,
              isExpanded: true,
              items: <String>[
                'Universidad Nacionar de San Martin',
                'Universidad Cesar Vallejo'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) =>
                  controller.valueSelectInput.value = newValue!),
        ),
      );
    });
  }

  Widget containerPDF() {
    return Center(
        child: Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color_title,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.upload_file,
            color: Colors.white,
          ),
          spacing(10),
          const Text(
            'Subir PDF',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }

  Widget buttomAction(String titleButton) {
    return Center(
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minWidth: 285,
        height: 48,
        color: primary_color,
        onPressed: () {},
        splashColor: const Color(0xffCF634C),
        child: Text(
          titleButton,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
