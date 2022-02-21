import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unipre/app/ui/global_widgets/global_widgets.dart';
import 'package:unipre/app/ui/theme/color.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final _sizeScreen = MediaQuery.of(context).size;

    return ListView(
      children: [
        Container(height: 175, color: primary_color),
        const SizedBox(height: 20),
        Container(
            height: _sizeScreen.height * 0.12,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                cardTheme(Icons.calculate, 'Algebra', const Color(0xffCB4335),
                    const Color(0xffF5B7B1)),
                cardTheme(Icons.savings, 'Economía', const Color(0xff28B463),
                    const Color(0xffABEBC6)),
                cardTheme(Icons.science, 'Química', const Color(0xffD4AC0D),
                    const Color(0xffF9E79F)),
                cardTheme(Icons.auto_stories, 'Razonamiento Verbal',
                    const Color(0xff2E86C1), const Color(0xffAED6F1)),
              ],
            )),
        const SizedBox(height: 20),
        ListView(
          shrinkWrap: true,

          physics: const ClampingScrollPhysics(), // new

          children: [
            postContainer(
                'https://andypoquis.codes/assets/img/profile2.jpg',
                'Andrés Enrique Poquis',
                'EXAMEN DE ADMISIÓN 2021-II',
                'Esto es una descripción',
                'Postulante UNSM',
                'Hace 7horas',
                true,
                true),
            postContainer(
                'https://andypoquis.codes/assets/img/profile2.jpg',
                'Andrés Enrique Poquis',
                'EXAMEN DE ADMISIÓN 2021-II',
                'Esto es una descripción',
                'Postulante UNSM',
                'Hace 7horas',
                false,
                true),
            postContainer(
                'https://andypoquis.codes/assets/img/profile2.jpg',
                'Andrés Enrique Poquis',
                'EXAMEN DE ADMISIÓN 2021-II',
                'Esto es una descripción',
                'Postulante UNSM',
                'Hace 7horas',
                true,
                true),
            postContainer(
                'https://andypoquis.codes/assets/img/profile2.jpg',
                'Andrés Enrique Poquis',
                'EXAMEN DE ADMISIÓN 2021-II',
                'Esto es una descripción',
                'Postulante UNSM',
                'Hace 7horas',
                true,
                true)
          ],
        )
      ],
    );
  }

  Widget cardTheme(IconData icon, String title, Color color, Color colorBg) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: 110,
      height: 30,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: colorBg),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.network(''),
            Icon(
              icon,
              color: color,
              size: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  color: color,
                  fontWeight: FontWeight.bold,
                ))
          ],
        ),
      ),
    );
  }
}
