import 'package:carinventory/colors.dart';
import 'package:carinventory/pages/addpage.dart';
import 'package:carinventory/pages/soldcars.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int pageindex=0;
  final pages=[
    home(),
    add(),
    sold()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: sColor,
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed:(){}, icon: Icon(Icons.home)),
              IconButton(onPressed: (){}, icon: Icon(Icons.add)),
              IconButton(onPressed: (){}, icon: Icon(Icons.directions_car_sharp))
            ],
          ),
        ),
      ),
    );
  }
}
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
