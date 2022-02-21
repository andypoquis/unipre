import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unipre/app/ui/theme/color.dart';
import '../../../controllers/post_controller.dart';

class PostPage extends GetView<PostController> {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                const Text('Publicación',
                    style: TextStyle(
                        color: color_title,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: postContainer(
                'https://andypoquis.codes/assets/img/profile2.jpg',
                'Andrés Enrique Poquis',
                'EXAMEN DE ADMISIÓN 2021-II',
                'Esto es una descripción',
                'Postulante UNSM',
                'Hace 7horas',
                false,
                true),
          ),
          Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ranking',
                      style: TextStyle(
                        color: color_title,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Card(
                        child: Column(
                          children: [
                            positionContainer(),
                            positionContainer(),
                            positionContainer()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      )),
    );
  }

  Widget postContainer(
      String url,
      String name,
      String title,
      String description,
      String subtitle,
      String time,
      bool isPdf,
      bool isLike) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 180,
      child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url,
                          fit: BoxFit.cover, width: 40, height: 40),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 16,
                              color: color_title,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(subtitle)
                      ],
                    ),
                    Expanded(child: Container()),
                    Text(time)
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 14,
                          color: color_title,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: (!isPdf)
                              ? const Color(0xff2ECC71)
                              : const Color(0xffE74C3C)),
                      child: (!isPdf)
                          ? const Text('Prueba',
                              style: TextStyle(
                                color: Colors.white,
                              ))
                          : const Text('PDF',
                              style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(width: 5),
                    (!isPdf)
                        ? const Icon(Icons.query_builder_rounded,
                            color: color_subtitle)
                        : Container(),
                    (!isPdf) ? const Text('23min') : Container(),
                  ],
                ),
                const SizedBox(height: 10),
                Text(description),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.favorite, color: color_subtitle),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.chat_bubble,
                      color: color_subtitle,
                    ),
                    Expanded(child: Container()),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: (!isPdf)
                              ? const Color(0xff2ECC71)
                              : const Color(0xffE74C3C),
                          elevation: 0),
                      onPressed: () {},
                      child: (!isPdf)
                          ? const Text('Comenzar prueba',
                              style: TextStyle(
                                color: Colors.white,
                              ))
                          : const Text('Descargar',
                              style: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text('23 Me gusta'),
              ],
            ),
          )),
    );
  }

  Widget positionContainer() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://andypoquis.codes/assets/img/profile2.jpg',
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Andrés Enrique Poquis',
                    style: const TextStyle(
                        fontSize: 16,
                        color: color_title,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Postulante UNSM')
                ],
              ),
              Expanded(child: Container()),
              Text('1',
                  style: const TextStyle(
                      color: color_title,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ],
      ),
    );
  }
}
