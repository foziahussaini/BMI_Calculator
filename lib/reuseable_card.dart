import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);

class ReuseableCard extends StatelessWidget {

  final Color? color;
  final Widget? child;
  const ReuseableCard({super.key, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color ?? activeCardColor,
        borderRadius: BorderRadius.circular(16),),
      child: child,
    );
  }
}