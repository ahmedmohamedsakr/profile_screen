import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final IconData icon;
  final String data;
  const UserInfo({this.icon,this.data});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(icon, color: Colors.white),
        SizedBox(
          width: 12.0,
        ),
        Text(
          data, //todo
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

