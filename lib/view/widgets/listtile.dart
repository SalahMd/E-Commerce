import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  final Icon leadingIcon;
  final Icon trailingIcon;
  //final Function onPressed;
  final String listText;

  const ListTiles(
      {super.key,
      required this.leadingIcon,
      required this.trailingIcon,
      //required this.onPressed,
      required this.listText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: ListTile(
        leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.orange),
            child: leadingIcon),
        trailing: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.grey[300]),
          child: trailingIcon,
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 13.0),
          child: Text(
            listText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
