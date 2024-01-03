import 'package:flutter/material.dart';

class LayoutCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  final VoidCallback? onPress;

  LayoutCard({required this.color, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
