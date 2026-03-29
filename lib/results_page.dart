import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            child: Text("Your Result", style: kTitleTextStyle,),)),
          Expanded(
            flex: 5,
              child: ReuseableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Normal", style: kResultsTextStyle),
                    Text("18.3", style: kBMITextStyle,),
                    Column(
                      children: [
                        Text("Normal BMI Range", style: kGreyBodyTextStyle),
                        Text("18.5 - 25 kg/m2", style: kBodyTextStyle,)
                      ],
                    ),
                    Text("You have a normal body weight, good job", style: kBodyTextStyle, textAlign: TextAlign.center,),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
