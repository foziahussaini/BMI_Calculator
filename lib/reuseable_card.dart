import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);

class ReuseableCard extends StatelessWidget {

  final Color? color;
  final Widget? child;
  final void Function()? onPressed;

  const ReuseableCard({super.key, this.color, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color ?? activeCardColor,
          borderRadius: BorderRadius.circular(16),),
        child: child,
      ),
    );
  }
}