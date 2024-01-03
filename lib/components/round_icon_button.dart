import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onclick;
  final IconData icon;

  RoundIconButton({required this.onclick, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onclick,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: kRoundIconButtonColor,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
    );
  }
}
