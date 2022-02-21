import 'package:get/get.dart';
import 'package:unipre/app/bindings/botomappbar_binding.dart';
import 'package:unipre/app/bindings/login_binding.dart';
import 'package:unipre/app/bindings/menuaddmaterial_binding.dart';
import 'package:unipre/app/bindings/notify_binding.dart';
import 'package:unipre/app/bindings/post_binding.dart';
import 'package:unipre/app/ui/pages/botomappbar_page/botomappbar_page.dart';
import 'package:unipre/app/ui/pages/home_page/home_page.dart';
import 'package:unipre/app/ui/pages/init_page/init_page.dart';
import 'package:unipre/app/ui/pages/login_page/login_page.dart';
import 'package:unipre/app/ui/pages/menuaddmaterial_page/menuaddmaterial_page.dart';
import 'package:unipre/app/ui/pages/notify_page/notify_page.dart';
import 'package:unipre/app/ui/pages/post_page/post_page.dart';
import 'package:unipre/app/ui/pages/splash_page/splash_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
    ),
    GetPage(name: Routes.INIT, page: () => InitPage()),
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(
        name: Routes.BOOTOMAPPBAR,
        page: () => BotomappbarPage(),
        binding: BotomappbarBinding()),
    GetPage(
        name: Routes.POST,
        page: () => const PostPage(),
        binding: PostBinding()),
    GetPage(
        name: Routes.NOTIFY,
        page: () => NotifyPage(),
        binding: NotifyBinding()),
    GetPage(
        name: Routes.MENUADDMATERIAL,
        page: () => MenuaddmaterialPage(),
        binding: MenuaddmaterialBinding()),
  ];
}
