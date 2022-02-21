import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unipre/app/ui/global_widgets/global_widgets.dart';
import 'package:unipre/app/ui/theme/color.dart';
import '../../../controllers/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                  'https://andypoquis.codes/assets/img/profile2.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Andres Enrique Poquis Chávez',
              style: TextStyle(
                  fontSize: 18,
                  color: color_title,
                  fontWeight: FontWeight.bold),
            ),
            const Text('Postulante UNSM'),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '4',
                      style: TextStyle(
                          color: color_title, fontWeight: FontWeight.bold),
                    ),
                    Text('Publicacio...'),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '163',
                      style: TextStyle(
                          color: color_title, fontWeight: FontWeight.bold),
                    ),
                    Text('Seguidores'),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '37',
                      style: TextStyle(
                          color: color_title, fontWeight: FontWeight.bold),
                    ),
                    Text('Seguidos'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: const Text(
                  'Editar Perfil',
                  style: TextStyle(color: color_title),
                )),
          ],
        ),
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
}
