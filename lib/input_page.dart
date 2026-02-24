import 'package:flutter/material.dart';

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
          Row(
            children: [
              Expanded(child: ReuseableCard()),
              Expanded(child: ReuseableCard())
            ],
          ),
          Expanded(child: ReuseableCard(),),
          Row(
            children: [
              Expanded(child: ReuseableCard()),
                  Expanded(child: ReuseableCard())
            ],
          )
        ],
      )
    );
  }
}

class ReuseableCard extends StatelessWidget {

  final Color? color;
  ReuseableCard({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: color ?? Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(16)),
      child: Center(child: Text('Body Text')),
    );
  }
}
