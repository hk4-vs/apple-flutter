import 'package:flutter/material.dart';

class OnProfileTap extends StatelessWidget {
  const OnProfileTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
          tag: 'profile-image',
          child: Image.network("https://wallpaperaccess.com/full/19921.jpg")),
    );
  }
}
