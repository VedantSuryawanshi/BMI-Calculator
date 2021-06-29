import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/buttombutton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiresult,
      @required this.statment,
      @required this.advice});

  final String bmiresult;
  final String statment;
  final String advice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kBottonBig,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reuseablebox(
              colour: kcardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    statment.toUpperCase(),
                    style: kBottonResult,
                  ),
                  Text(
                    bmiresult,
                    style: kBottonResultBig,
                  ),
                  Text(
                    advice,
                    textAlign: TextAlign.center,
                    style: kBottonsmall,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
