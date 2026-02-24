import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomAppBarHeight = 80;
const bottomAppBarColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseableCard(
                  child: IconContent(
                    icon: FontAwesomeIcons.mars, label: "Male",
                  ),
                )),
                Expanded(child: ReuseableCard(
                  child: IconContent(
                    icon: FontAwesomeIcons.venus, label: "Female",
                  ),
                ))
              ],
            ),
          ),
          Expanded(child: ReuseableCard(),),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseableCard()),
                    Expanded(child: ReuseableCard())
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: 
      BottomAppBar(color: bottomAppBarColor,
      height: bottomAppBarHeight,),
    );
  }
}




