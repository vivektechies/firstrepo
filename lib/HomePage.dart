import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfoliyo/widget.dart';

// class HomePage extends StatefulWidget {
//   HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   final namecontroller = TextEditingController();
//
//   final gmailcontroller = TextEditingController();
//
//   final passcontroller = TextEditingController();
//
//   bool eyepass = true;
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     eyepass;
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: MediaQuery.of(context).size.height / 2,
//           //width: 800,
//           width: MediaQuery.of(context).size.width / 2,
//           decoration: BoxDecoration(
//               shape: BoxShape.rectangle,
//               color: Colors.yellowAccent.shade700,
//               borderRadius: BorderRadius.only(
//                   bottomRight: Radius.elliptical(20, 20),
//                   topLeft: Radius.elliptical(20, 30))),
//           child: Column(
//             children: [
//               Textform(
//                 hinttext: "enter name",
//                 icon: Icons.drive_file_rename_outline,
//                 controller: namecontroller,
//                 obscure: false,
//               ),
//               Textform(
//                 hinttext: "enter your gmail",
//                 icon: Icons.email_outlined,
//                 controller: gmailcontroller,
//                 obscure: false,
//               ),
//               Textform(
//                 hinttext: "password",
//                 icon: Icons.lock,
//                 controller: passcontroller,
//                 obscure: eyepass,
//                 post: IconButton(
//                   onPressed: () {
//                     isshidde();
//                   },
//                   icon: Icon(Icons.remove_red_eye),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   isshidde() {
//     setState(() {
//       eyepass = false;
//     });
//   }
// }
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isExpanded= false;


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Animation Example'),
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 1000),
              curve: Curves.decelerate,
              right: _isExpanded ? 100 : 200,
              top: _isExpanded ? 100 : 200,

              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
