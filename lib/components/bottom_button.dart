import 'package:flutter/material.dart';
import '../constant.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback? onclick;
  final String lable;

  BottomButton({this.onclick, required this.lable});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            lable,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        height: 60.0,
        width: double.infinity,
        color: kFooterBackgroundColor,
      ),
    );
  }
}