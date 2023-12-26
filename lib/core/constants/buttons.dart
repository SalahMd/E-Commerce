import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class buttonseapp{
  // Colors color ;
  // buttonseapp({required this.color});
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(
    255, 255, 152, 0),
    padding: EdgeInsets.only(
    left: 120, right: 120, top: 8, bottom: 8),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15)),
      );
  static ButtonStyle elevatedSignUpButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(
        255, 255, 152, 0),
    padding: EdgeInsets.only(
        left: 100, right: 100, top: 8, bottom: 8),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)),
  );
  // static Style = ElevatedButton.styleFrom(
  // backgroundColor: Color.fromARGB(
  // 255, 15, 90, 123),
  // padding: EdgeInsets.only(
  // left: 60, right: 60, top: 10, bottom: 10),
  // shape: RoundedRectangleBorder(
  // borderRadius: BorderRadius.circular(15)),
  // ),

}