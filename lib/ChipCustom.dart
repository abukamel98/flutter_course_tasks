import 'package:flutter/material.dart';

class ChipCustom extends StatelessWidget {

  final String title;

  const ChipCustom({ required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
