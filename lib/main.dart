import 'package:carinventory/colors.dart';
import 'package:carinventory/pages/home%20page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(sbody());
}
class sbody extends StatelessWidget {
  const sbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen()
    );
  }
}


class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen>{
  int splashtime = 30;
  // duration of splash screen on second

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
        //pushReplacement = replacing the route so that
        //splash screen won't show on back button press
        //navigation to Home page.
          builder: (context){
            return homepage();
          }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sColor,
      body:Container(
          child: Center(
            child: Image.asset("images/cari.jpg"),
          ),
      ),
    );
  }
}
