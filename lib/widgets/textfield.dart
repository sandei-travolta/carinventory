import 'package:flutter/material.dart';
class TextForm extends StatelessWidget {
  const TextForm({Key? key,required this.controller,required this.Text,e}) : super(key: key);
  final TextEditingController controller;
  final String Text;
  //final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
     width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
            borderRadius: BorderRadius.circular(5)
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: Text,
              border: InputBorder.none
            ),
          ),
        ),
      ),
    );
  }
}
