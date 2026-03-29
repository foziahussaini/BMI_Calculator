import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 160;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPressed: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPressed: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "Female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReuseableCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HEIGHT", style: kLabelTextStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: kNumberTextStyle),
                    Text("cm", style: kLabelTextStyle,)
                  ],),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    overlayColor: Color(0x1fE18155),
                    trackHeight: 1,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xFF8D8E98),
                    thumbColor: Color(0xFFE81555),
                  ),
                  child: Slider(value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue){
                    setState(() {
                      height = newValue.round();
                    });
                      }),
                ),
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                // for weight changes
                Expanded(child: ReuseableCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("WEIGHT", style: kLabelTextStyle,),
                      Text(weight.toString(), style: kNumberTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: (){
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(width: 10,),
                          RoundIconButton(
                            onPress: (){
                              setState(() {
                                weight++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                // for age changes
                Expanded(child: ReuseableCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("AGE", style: kLabelTextStyle,),
                      Text(age.toString(), style: kNumberTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: (){
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(width: 10,),
                          RoundIconButton(
                            onPress: (){
                              setState(() {
                                age++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: kBottomAppBarColor,
        height: kBottomAppBarHeight,
        child: Center(child: Text("Calculate", style: kLargeButtonTextStyle,)),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPress;
  RoundIconButton({required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: Color(0xFF4C4f5E),
      onPressed: onPress,
    shape: CircleBorder(),);
  }
}


