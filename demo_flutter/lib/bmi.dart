import 'package:demo_flutter/apsuat.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class BMIPage extends StatefulWidget {
  @override
  State<BMIPage> createState() => BMI();
}

double weight = 0;
double height = 0;
String s = 'ssss';
String tinh(double w, double h) {
  double t = (w / (pow(h * 0.01, 2)));

  if (t < 18.5) {
    s = "Người gầy";
  }
  if (18.5 <= t && t <= 24.9) {
    s = "Bình thường";
  }
  if (t == 25) s = "Thừa cân";
  if (25 < t && t < 29.9) s = "Tiền béo phì";
  if (30 <= t && t <= 34.9) s = "Béo phì độ I";
  if (35 <= t && t < 39.9) s = "Béo phì độ II";
  if (t >= 40) s = "Béo phì độ III";
  return s;
}

class BMI extends State<BMIPage> {
  final weightcontroller = TextEditingController();
  final heightcontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
    weightcontroller.addListener(() => setState(() {}));
    heightcontroller.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Chỉ số BMI"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: Image(
                    height: 80.0,
                    width: 80.0,
                    image: AssetImage('assets/bmi.png'),
                  ),
                ),
                buildText('Cân nặng'),
                //buildInput(weight),
                Container(
                  height: 50,
                  width: 200,
                  padding: const EdgeInsets.all(0),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '50',
                      suffixIcon: weightcontroller.text.isEmpty
                          ? Container(
                              width: 0,
                            )
                          : IconButton(
                              onPressed: () => weightcontroller.clear(),
                              icon: Icon(Icons.close)),
                      border: OutlineInputBorder(),
                    ),

                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    controller: weightcontroller,
                  ),
                ),
                buildText('Chiều cao'),
                //buildInput(height),
                Container(
                  height: 50,
                  width: 200,
                  padding: const EdgeInsets.all(0),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '50',
                      suffixIcon: weightcontroller.text.isEmpty
                          ? Container(
                              width: 0,
                            )
                          : IconButton(
                              onPressed: () => weightcontroller.clear(),
                              icon: Icon(Icons.close)),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    controller: heightcontroller,
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                  child: RaisedButton(
                    onPressed: () {
                      weight = double.parse(weightcontroller.text);
                      height = double.parse(heightcontroller.text);

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Image(
                              height: 50.0,
                              width: 50.0,
                              image: AssetImage('assets/bmi.png'),
                            ),
                            content: Text(
                              tinh(weight, height),
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            actions: [
                              OutlineButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('Đóng'),
                              )
                            ],
                          );
                        },
                      );
                    },
                    textColor: Colors.black,
                    child: Text('Tính'),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget buildText(String text) {
    return Container(
      height: 40.0,
      width: 200.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      child: Text(
        '$text',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
