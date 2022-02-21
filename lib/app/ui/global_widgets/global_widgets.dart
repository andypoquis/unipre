import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:unipre/app/controllers/homepage_controller.dart';
import 'package:unipre/app/ui/theme/color.dart';

final _controller = Get.put(HomepageController());

Widget postContainer(String url, String name, String title, String description,
    String subtitle, String time, bool isPdf, bool isLike) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    height: 180,
    child: GestureDetector(
      onTap: _controller.navigationPost,
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
                  children: const [
                    Icon(Icons.favorite, color: color_subtitle),
                    SizedBox(width: 10),
                    Icon(
                      Icons.chat_bubble,
                      color: color_subtitle,
                    )
                  ],
                )
              ],
            ),
          )),
    ),
  );
}
