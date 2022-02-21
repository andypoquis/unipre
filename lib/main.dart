import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/bindings/init_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/ui/theme/light.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INIT,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    initialBinding: InitBinding(),
    getPages: AppPages.pages,
  ));
}
