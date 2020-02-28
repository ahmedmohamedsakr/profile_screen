import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double progressValue;
  final String category;
  final Color color;

  const ProgressBar({this.progressValue,this.category,this.color});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: progressValue,
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          category,
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
