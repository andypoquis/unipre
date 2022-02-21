import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unipre/app/ui/theme/color.dart';
import '../../../controllers/notify_controller.dart';

class NotifyPage extends GetView<NotifyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                      )),
                  const SizedBox(width: 10),
                  const Text('Actividad',
                      style: TextStyle(
                          color: color_title,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Expanded(
                flex: 9,
                child: ListView(
                  children: [sectionTimeWidget()],
                ))
          ],
        ),
      ),
    );
  }

  Widget sectionTimeWidget() {
    return Padding(
      padding: const EdgeInsets.all(12.25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hoy',
            style: TextStyle(color: color_title),
          ),
          const SizedBox(height: 20),
          containerNotify()
        ],
      ),
    );
  }

  Widget containerNotify() {
    return SizedBox(
        height: 40,
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://andypoquis.codes/assets/img/profile2.jpg',
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40)),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Andrés E. Poquis',
                    style: TextStyle(
                        color: color_title, fontWeight: FontWeight.bold)),
                Text('Le gusto tu publicación'),
              ],
            ),
            Expanded(child: Container()),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.school, color: color_subtitle))
          ],
        ));
  }
}
