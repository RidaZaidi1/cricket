import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({ Key? key }) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
backgroundColor: Colors.transparent,
body: Column(
  children: [
     Center(
       child: ExpansionTile(title: Text("Completed",style: TextStyle(color: Colors.white),),
 iconColor: Colors.white,
       ),
     )
  ],
)
  );
  }
}