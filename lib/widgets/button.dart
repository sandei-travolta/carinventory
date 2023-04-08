import 'package:carinventory/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({Key? key,required this.btext}) : super(key: key);
  final String btext;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bColor,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 30,
      width: 100,
      child: Center(child: Text(btext)),
    );
  }
}
