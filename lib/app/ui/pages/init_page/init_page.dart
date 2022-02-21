import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unipre/app/ui/theme/color.dart';
import '../../../controllers/init_controller.dart';

class InitPage extends GetView<InitController> {
  @override
  Widget build(BuildContext context) {
    final _sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
              color: Colors.white,
              width: _sizeScreen.width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: _sizeScreen.height * 0.50,
                        child: ScrollConfiguration(
                            behavior: MyBehavior(),
                            child: PageView.builder(
                                reverse: true,
                                itemCount: 3,
                                pageSnapping: true,
                                itemBuilder: (context, pagePosition) {
                                  List<Widget> listItemCarrusel = [
                                    itemCarrusel(
                                        'Descubre examenes y material PDF pre Universitarios de las mejores universidades del Perú',
                                        'assets/logo1.png'),
                                    itemCarrusel(
                                        'Descubre examenes y material PDF pre Universitarios de las mejores universidades del Perú',
                                        'assets/logo2.png'),
                                    itemCarrusel(
                                        'Descubre examenes y material PDF pre Universitarios de las mejores universidades del Perú',
                                        'assets/logo3.png'),
                                  ];
                                  controller.indexCorosel = pagePosition.obs;
                                  return listItemCarrusel[pagePosition];
                                })),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          containerScroll(controller.colorChanged()),
                          const SizedBox(
                            width: 10,
                          ),
                          containerScroll(controller.colorChanged()),
                          const SizedBox(
                            width: 10,
                          ),
                          containerScroll(controller.colorChanged()),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('   Empezar   ')),
                  const SizedBox(height: 10),
                  const Text('¿Ya tienes una cuenta?'),
                  GestureDetector(
                      onTap: controller.naviagonPage,
                      child: const Text('Iniciar sesión',
                          style: TextStyle(fontWeight: FontWeight.bold)))
                ],
              )),
        ),
      ),
    );
  }

  Widget containerScroll(MaterialColor colorIndex) {
    return Container(
        height: 10,
        width: 25.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(2.5)),
          color: colorIndex,
        ));
  }

  Widget itemCarrusel(String title, String source) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(source),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
