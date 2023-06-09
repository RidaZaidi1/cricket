
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themedark/shared/liveerror.dart';
import 'package:themedark/shared/result.dart';


import '../../../modecontroller.dart';
import 'oallrounder.dart';
import 'obatsman.dart';
import 'obowler.dart';
import 'oteam.dart';


class Odimain extends StatefulWidget {
  const Odimain({ Key? key }) : super(key: key);

  @override
  State<Odimain> createState() => _OdimainState();
}
final controller = Get.put(DarkModeController());
class _OdimainState extends State<Odimain> {
  @override
  Widget build(BuildContext context) {
       Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: DefaultTabController(
  length: 4,
  child: Scaffold(
    backgroundColor: Colors.transparent,

      appBar: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 4.0,
        labelColor:  controller.mode == 'light'? Color(0xff06122c) :Colors.white ,
        labelStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),
        indicatorColor: controller.mode == 'light'
                                    ? Color(0xff1A3A90):Color(0xff8cb3ea),
        tabs: [
          Tab(text: "Batsman",),
          Tab(text: "Bowlers",),
          Tab(text: "All\nRounder",),
                  Tab(text: "Teams",),
        ],
      ),
     
    body: TabBarView(
      children: [

     Obatsman(),
   Obowler(),
        Oallround(),
                Oteam(),
      ],
    ),
  ),
),
    );
    
  }
}
