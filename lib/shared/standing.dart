import 'package:flutter/material.dart';


class Standing extends StatefulWidget {
  const Standing({ Key? key }) : super(key: key);

  @override
  State<Standing> createState() => _StandingState();
}

class _StandingState extends State<Standing> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
backgroundColor: Color(0xff353e52),
body: Column(
  children: [
    SizedBox(height: 50,),
    Center(child: Image.asset("assets/standing.png",height: 200,width: 200,)),
       SizedBox(height: 50,),
    Container(

   height:35,
width:280,


   decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),

   child: Center(child: Text('No standings available for this series',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight:FontWeight.w500 ) ,)),

   ),
   SizedBox(height: 50,),
   Container(
    height: 70,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Color(0xff8cb3ea)
    ),
    child: Center(child: Text("Reload",style:TextStyle(color: Color(0xff020e28),fontSize: 20,fontWeight:FontWeight.w500 ) ,)),
   )
  ],
),
    );
  }
}