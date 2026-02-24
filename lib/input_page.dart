import 'package:flutter/material.dart';

const double bottomAppBarHeight = 80;
const activeCardColor = Color(0xFF1D1E33);
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
                Expanded(child: ReuseableCard()),
                Expanded(child: ReuseableCard())
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

class ReuseableCard extends StatelessWidget {

  final Color? color;
  const ReuseableCard({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color ?? activeCardColor,
          borderRadius: BorderRadius.circular(16),),
    );
  }
}
