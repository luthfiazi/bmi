import 'package:bmi/bmi_result_screen.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({Key? key}) : super(key: key);

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  @override
  Widget build(BuildContext context) {
    var widget2 = widget;
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            color: Colors.grey,
          )),
          Expanded(child: Container(
            color: Colors.black,
          )),
          Expanded(child: Container(
            color: Colors.black12,
          )),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: ((context){
                  return BmiResultScreen();
                })
              ));
            },
            child: Container(
              height: 60,
              color: Colors.grey,
              child: Center(child: Text("Hitung BMI")),
            ),
          )
        ],
      ),
    );
  }
}