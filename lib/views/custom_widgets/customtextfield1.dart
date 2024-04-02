import 'package:flutter/material.dart';

class CustomTextField1 extends StatelessWidget {
  final String? hintText;
  final double? width;

  CustomTextField1({this.hintText, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 730,
      height: 62,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.62),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        ),
      ),
    );
  }
}
