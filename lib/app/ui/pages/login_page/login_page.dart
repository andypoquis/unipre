import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unipre/app/data/services/database.dart';
import 'package:unipre/app/ui/theme/color.dart';
import '../../../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final _sizeScreen = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
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
                  const Text('Iniciar Sesión',
                      style: TextStyle(
                          color: color_title,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/logo.png')),
                ),
              ),
            ),
            Expanded(
                flex: 7,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Correo',
                          style: TextStyle(
                              color: color_title, fontWeight: FontWeight.w600)),
                      const SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(false),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Contraseña',
                          style: TextStyle(
                              color: color_title, fontWeight: FontWeight.w600)),
                      const SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(true),
                      const SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                maximumSize: Size(_sizeScreen.width * 0.9, 50),
                                minimumSize: Size(_sizeScreen.width * 0.8, 50)),
                            onPressed: () => Database().registerUser(
                                'andrespoquis@gmail.com', 'animes57xz'),
                            child: const Text('Iniciar Sesión')),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget textFieldContainer(bool isPassword) {
    return TextField(
      obscureText: isPassword,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: color_title),
        filled: true,
        fillColor: bg_color02,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
