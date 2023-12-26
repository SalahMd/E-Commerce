import 'package:flutter/cupertino.dart';

class Dimensions {
  static double screenHeight (BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  static double screenwidth (BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
