import 'package:carinventory/widgets/button.dart';
import 'package:carinventory/widgets/textfield.dart';
import 'package:flutter/material.dart';
class add extends StatelessWidget {
  add({Key? key}) : super(key: key);
  final TextEditingController carcontroller=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:  BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    height: 200,
                    width: 200,
                    child: Center(
                      child: Icon(
                        Icons.add_a_photo_rounded,color: Colors.black,size: 80,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Car Make:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      SizedBox(width: 20,),
                      TextForm(controller: carcontroller, Text: "Car make"),
                    ],
                  ),

                ],
              ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Condition : ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                SizedBox(width: 15,),
                TextForm(controller: carcontroller, Text: "Vehicle Condition"),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Year : ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                SizedBox(width: 49,),
                TextForm(controller: carcontroller, Text: "Year of production"),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Engine :",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                SizedBox(width: 39,),
                TextForm(controller: carcontroller, Text: "Engine type"),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Doors:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                SizedBox(width: 47,),
                TextForm(controller: carcontroller, Text: "Number of doors"),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("price:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                SizedBox(width: 56,),
                TextForm(controller: carcontroller, Text: "Price"),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(btext: 'Add'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
Widget maina(){
  return Icon(Icons.add_a_photo_rounded);
}
