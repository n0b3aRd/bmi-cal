import 'package:bmi_calculator/components/layout_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String msg;
  ResultPage({required this.bmi, required this.msg, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroutndColor,
        centerTitle: true,
        title: Text('BMI calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultHeadingStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: LayoutCard(
              color: kCardActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result.toUpperCase(),
                    style: kResultTestStyle,
                  ),
                  Text(
                    bmi,
                    style: kResultBmiTextStyle,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        msg,
                        style: kResultMsgTextStyle,
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
            ),
          ),
          BottomButton(
            lable: 'RE-CALCULATE',
            onclick: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
