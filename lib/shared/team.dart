import 'package:flutter/material.dart';

class Team extends StatefulWidget {
  const Team({ Key? key }) : super(key: key);

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
backgroundColor: Colors.transparent,
body: Column(
  children: [
Padding(
  padding: const EdgeInsets.only(top:10.0),
  child:   Container(
  
  height: 180,
  
  width: 400,
  
  decoration: BoxDecoration(color: Color(0xff373e52),borderRadius: BorderRadius.circular(30) ),

child: Column(
  children: [
    SizedBox(height:30),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
      children: [
    Column(
      children: [
        
 Row(
   children: [
      Padding(
             padding: const EdgeInsets.only(left:20,),
        child: Image.asset("assets/ireland.png",height: 30,width: 30,),
      ),
     Padding(
        
          padding: const EdgeInsets.only(left:10,),
        
          child:   Text('Ireland',style:TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.w500)),
        
        ),
   ],
 ),
      ],
    ),
        Column(
      children: [

      ],
    ),
   
    
    Padding(
    
      padding: const EdgeInsets.only(right:23),
    
      child:   Icon(Icons.arrow_forward_ios,color:  Color(0xff9aaed5),),
    
    ),
    
      ],
    
    ),
      SizedBox(height:20),
    Padding(
      padding: const EdgeInsets.only(left:25.0,right: 25.0),
      child: Divider(color: Colors.grey,thickness: 1,),
    ),
  SizedBox(height: 30,),
  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
      children: [
    Column(
      children: [
        
 Row(
   children: [
      Padding(
             padding: const EdgeInsets.only(left:20,),
        child: Image.asset("assets/ban.png",height: 30,width: 30,),
      ),
     Padding(
        
          padding: const EdgeInsets.only(left:10,),
        
          child:   Text('Bangladesh',style:TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.w500)),
        
        ),
   ],
 ),
      ],
    ),
        Column(
      children: [

      ],
    ),
   
    
    Padding(
    
      padding: const EdgeInsets.only(right:23),
    
      child:   Icon(Icons.arrow_forward_ios,color:  Color(0xff9aaed5),),
    
    ),
    
      ],
    
    ),
]),
 ),
),

  

  ]
)
 );
  }
}