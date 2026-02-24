import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String? label;

  IconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 85,),
        SizedBox(height: 20,),
        Text(label!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF8D8E98)),)
      ],
    );
  }
}