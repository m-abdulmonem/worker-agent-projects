import 'package:worker_agent/core/services/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Get.width,
        height: 50,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 14.5, right: 4.5),
            itemCount: 10,
            itemBuilder: (_, index) => Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: colorPrimary,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(1000),
                  image: const DecorationImage(
                    image: NetworkImage("https://media.macphun.com/img/uploads/customer/how-to/579/15349456005b7d69405aabf4.32904503.jpg?q=85&w=1340"),
                    fit: BoxFit.fill,
                  )
              ),
              margin: const EdgeInsets.only(right: 10),
            )));
  }
}
