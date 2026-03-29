import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String? bmiResult, resultText, interpretation;
 ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

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
            padding: EdgeInsets.all(15),
      alignment: Alignment.bottomLeft,
            child: Text("Your Result", style: kTitleTextStyle,),)),
          Expanded(
            flex: 5,
              child: ReuseableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText!.toUpperCase(), style: kResultsTextStyle),
                    Text(bmiResult!, style: kBMITextStyle,),
                    Column(
                      children: [
                        Text("Normal BMI Range", style: kGreyBodyTextStyle),
                        Text("18.5 - 25 kg/m2", style: kBodyTextStyle,)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                        child: Text(interpretation!,
                          style: kBodyTextStyle, textAlign: TextAlign.center,)),
                  ],
                ),
              )
          ),
          BottomButton(title: "RE-CALCULATE", onTap: (){
            Navigator.pop(context);
    })
        ],
      ),
    );
  }
}
