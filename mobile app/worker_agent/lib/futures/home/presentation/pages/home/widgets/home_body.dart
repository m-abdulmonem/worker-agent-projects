import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:worker_agent/core/services/custom_widgets.dart';
import '../manger/home_controller.dart';
import 'story.dart';

class HomeBody extends GetWidget<HomeController> {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Story(),

          // const CircleAvatar(
          //   backgroundImage: NetworkImage("https://media.macphun.com/img/uploads/customer/how-to/579/15349456005b7d69405aabf4.32904503.jpg?q=85&w=1340"),
          //   backgroundColor: Colors.black,
          //   radius: 25,
          // )
          const VerticalSpace(20),
          SizedBox(
            height: Get.height-Get.height*.3,
            child: ListView.builder(
              itemCount: 20,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: ListTile(
                    isThreeLine: true,
                    dense: true,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          "Marco Testi $index",
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Color(0xffF1C40F),
                          ),
                          onRatingUpdate: (double value) {},
                        )
                      ],
                    ),
                    leading:const CircleAvatar(
                      backgroundImage: NetworkImage("https://media.macphun.com/img/uploads/customer/how-to/579/15349456005b7d69405aabf4.32904503.jpg?q=85&w=1340"),
                      backgroundColor: Colors.transparent,
                      radius: 25,
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  CustomText("Price"),
                                  VerticalSpace(10),
                                  CustomText("420 EGP")
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  CustomText("Location"),
                                  VerticalSpace(10),
                                  CustomText("Mansoura, 13 str portsaid")
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
