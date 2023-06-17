import 'package:flutter/material.dart';
void main(){
   runApp(myApp());


}
class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         body: Center(
           child: Text("viek"),
         ),

      ),
    );
  }
}
