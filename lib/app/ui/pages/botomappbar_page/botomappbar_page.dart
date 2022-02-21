import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unipre/app/ui/pages/home_page/home_page.dart';
import 'package:unipre/app/ui/pages/profile_page/profile_page.dart';
import 'package:unipre/app/ui/theme/color.dart';
import '../../../controllers/botomappbar_controller.dart';

class BotomappbarPage extends GetView<BotomappbarController> {
  @override
  Widget build(BuildContext context) {
    final _sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: color_title,
        elevation: 0,
        title: const Text('UniPre'),
        actions: [
          IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: usersSearch()),
              icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Expanded(
        child: PageView(
          controller: controller.pageController,
          children: [
            Expanded(child: HomePage()),
            Expanded(child: ProfilePage()),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.navigatorMenuAddMaterial,
        mini: true,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomAppBar(context),
    );
  }

  Widget _buildBottomAppBar(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Obx(() {
        return Row(
          children: [
            Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () => controller.changeColor2(),
                  icon: Icon(
                    Icons.home,
                    color: (controller.isColor.value)
                        ? color_title
                        : color_subtitle,
                  ),
                )),
            Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: () => controller.changeColor(),
                  icon: Icon(
                    Icons.person,
                    color: (!controller.isColor.value)
                        ? color_title
                        : color_subtitle,
                  ),
                ))
          ],
        );
      }),
    );

    // return ClipRRect(
    //   borderRadius: BorderRadius.only(
    //     topLeft: Radius.circular(30.0),
    //     topRight: Radius.circular(30.0),
    //   ),
    //   child: Container(
    //     child: BottomNavigationBar(
    //       backgroundColor: Colors.white,
    //       currentIndex: 0,
    //       showSelectedLabels: false,
    //       showUnselectedLabels:
    //           false, // this will be set when a new tab is tapped
    //       items: [
    //         BottomNavigationBarItem(
    //           icon: new Icon(Icons.home),
    //           label: '',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: new Icon(Icons.mail),
    //           label: '',
    //         ),
    //         BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
    //       ],
    //     ),
    //   ),
    // );
  }
}

class usersSearch extends SearchDelegate<String> {
  final users = ['uno', 'dos', 'tres'];
  final recentUsersSearch = ['uno', 'dos', 'tres'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}
