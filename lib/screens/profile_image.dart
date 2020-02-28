import 'package:flutter/material.dart';
import 'package:profile_screen/models/info_provider.dart';
import 'package:provider/provider.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Hero(
        tag: 'profileImage',
        child: Image.asset(Provider.of<InfoProvider>(context).profileImage),
      ),
    );
  }
}
