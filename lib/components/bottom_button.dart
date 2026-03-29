import 'package:flutter/material.dart';

import '../constant.dart';

class BottomButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  BottomButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        color: kBottomAppBarColor,
        height: kBottomAppBarHeight,
        child: Center(child: Text(title!, style: kLargeButtonTextStyle,)),
      ),
    );
  }
}