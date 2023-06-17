import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  final icon;
  final controller;
  final hinttext;
  final bool obscure ;
  final post;

  const Textform(
      {required this.obscure,required this.hinttext, required this.icon, required this.controller, this.post});

  @override
  Widget build(BuildContext context) {
    return TextField(

      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
          helperText: hinttext,

          prefixIcon: Icon(icon),
          suffixIcon: post,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  style: BorderStyle.none, color: Colors.pinkAccent))),
    );
  }
}
