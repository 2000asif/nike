import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenShoesDatials extends StatefulWidget {
  const MenShoesDatials({Key? key}) : super(key: key);

  @override
  State<MenShoesDatials> createState() => _MenShoesDatialsState();
}

class _MenShoesDatialsState extends State<MenShoesDatials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Mens Shoes',
                style: TextStyle(color: Color(0xff707B81)),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: Stack(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                    )),
                Positioned(
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF87265),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.black,
                      ),
                      height: 8,
                      width: 8,
                    ))
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  'BEST SELLER',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.lightBlue),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Nike Air Jordan',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '\$450.70',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  TextNike,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 16,
                ),
                Text('Gallery'),
                PageView()
              ],
            ),
          )
        ],
      ),
    );
  }
}

const TextNike = '''Nike Air a Jordan Amirican Shoes ,
 Best Qulity shoes is a nike Air jordan shoes , 
 New Qulity and new band nike air jordan shoes.
 many people love are a nike air jordan shoes vest qulityfull shoes .........
  ''';
