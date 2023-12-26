import 'package:flutter/material.dart';

class Balls extends StatelessWidget {
  final double Width;
  final double Height;

  const Balls({super.key, required this.Width, required this.Height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      width: Width,
      height: Height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.orange[600],
      ),
      // child: Image.asset(
      //   "images/logo.png",
        
      // ),
    );
  }
}
