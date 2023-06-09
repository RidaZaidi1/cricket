

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:themedark/maininfo.dart';
import 'package:themedark/shared/standing.dart';
import 'package:themedark/shared/stats.dart';
import 'package:themedark/shared/team.dart';
import '../modecontroller.dart';



class Homee4 extends StatefulWidget {
  const Homee4({Key? key}) : super(key: key);

  @override
  _Homee4State createState() => _Homee4State();
}
final controller = Get.put(DarkModeController());
class _Homee4State extends State<Homee4> {
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
                  length: 4,
                  child: Scaffold(
                      backgroundColor: Colors.transparent,
                      body: Column(
                        children: [
                          Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: controller.mode == 'light'
                                    ? Color(0xff1A3A90)
                                    : Color(0xff353e52),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40))),
                          child: Transform.translate(
                              offset: Offset(0, -30.0),
                          child: Center(child: Text("Ireland tour of England Only Test",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w800),))),
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
                                    text: 'Matches',
                                  ),
                                  Tab(
                                    text: 'Team',
                                  ),
                                  Tab(
                                    text: 'Standing',
                                  ),
                                  Tab(
                                    text: 'Stats',
                                  ),
                              
                                ],
                              ),
                            ),
                          ),
                          const Expanded(
                              child: TabBarView(
                            children: [
                         MAtchinfoo(),
                         Team(),
                         Standing(),
                         Stats(),

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