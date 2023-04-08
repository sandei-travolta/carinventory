import 'package:carinventory/colors.dart';
import 'package:carinventory/pages/addpage.dart';
import 'package:carinventory/pages/soldcars.dart';
import 'package:flutter/material.dart';

import '../modelclass.dart';

class homepage extends StatefulWidget {
   homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int pageindex=0;
  final pages=[
    const home(),
    add(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: sColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: navColor,
          centerTitle: true,
          title: Text("Car Inventory",style: TextStyle(color: Colors.black),),
        ),
        body: pages[pageindex],
        bottomNavigationBar: Container(
          height: 50,
          color: navColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed:(){
                setState(() {
                  pageindex=0;
                });
              }, icon: pageindex==0? const Icon(Icons.home): const Icon(Icons.home_outlined)),
              IconButton(onPressed: (){
                setState(() {
                  pageindex=1;
                });
              }, icon: pageindex==1? const Icon(Icons.add): const Icon(Icons.add)),
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
    return ListView.builder(itemCount:cars.length, itemBuilder: (context,index){
      return ItemCard(car: cars[index],);
    });
  }
}
class ItemCard extends StatelessWidget {
  ItemCard({Key? key,this.car}) : super(key: key);

  final car;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child:Image.asset(car.image,fit: BoxFit.fill,),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                  child: Text(car.make,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                  child: Text("Year: "+car.year,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                  child: Text("price:"+car.price+" KSh",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
