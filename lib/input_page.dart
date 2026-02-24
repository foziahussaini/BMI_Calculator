import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomAppBarHeight = 80;
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomAppBarColor = Color(0xFFEB1555);
enum Gender{male, female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;

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
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReuseableCard(
                    color: selectedGender == Gender.male ? activeCardColor : inActiveCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars, label: "Male",
                    ),
                  ),
                )),
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReuseableCard(
                    color: selectedGender == Gender.female ? activeCardColor : inActiveCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus, label: "Female",
                    ),
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




