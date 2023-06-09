import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themedark/shared/Hpage.dart';
import 'package:themedark/shared/Mpage.dart';
import 'package:themedark/shared/Npage.dart';
import 'package:themedark/shared/moree.dart';

import 'package:themedark/shared/series.dart';

import '../modecontroller.dart';

class Homee extends StatefulWidget {
  const Homee({Key? key}) : super(key: key);

  @override
  _HomeeState createState() => _HomeeState();
}

final controller = Get.put(DarkModeController());

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: GetBuilder<DarkModeController>(
          builder: (controller){
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(controller.mode == 'light'
                          ? "assets/backgroundlight.jpg"
                          : "assets/background.jpg"),
                      fit: BoxFit.cover)),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: DefaultTabController(
                  length: 5,
                  child: Scaffold(
                      backgroundColor: Colors.transparent,
                      body: Column(
                        children: [
                          Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: controller.mode == 'light'
                                    ? Color(0xff1A3A90)
                                    : Color(0xff353e52),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40))),
                          ),
                          Transform.translate(
                            offset: Offset(0, -60.0),
                            child: Container(
                              height: 40,
                              width: size.width * 0.98,
                              decoration: BoxDecoration(
                                  color: controller.mode == 'light'
                                      ? Color(0xff3452A0)
                                      : Colors.grey[700],
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: TabBar(
                                indicator: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25.0)),
                                labelColor: Color(0xff0E317C),
                                unselectedLabelColor: Colors.white,
                                tabs: const [
                                  Tab(
                                    text: 'Home',
                                  ),
                                  Tab(
                                    text: 'Matches',
                                  ),
                                  Tab(
                                    text: 'Series',
                                  ),
                                  Tab(
                                    text: 'News',
                                  ),
                                  Tab(
                                    text: 'More',
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Expanded(
                              child: TabBarView(
                            children: [
                              Hpage1(),
                              Mpage(),
                           Series(),
                              Npage(),
                      Morepage(),
                            ],
                          ))
                        ],
                      )),
                ),
              ));
          },
       
        ));
  }
}




