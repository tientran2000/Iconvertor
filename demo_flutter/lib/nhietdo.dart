import 'package:demo_flutter/rowTop.dart';
import 'package:flutter/material.dart';

double dc = 0, dk = 0, dr = 0, df = 0, rk = 0;
void tinh(double c, String v) {
  if (v == "ºC") {
    dc = (c);
    dk = (c * 274.15);
    df = (c * 33.8);
    dr = (c * 0.8);
    rk = (c * 493.47);
  }
  if (v == "ºF") {
    dc = (c * -17.22222);
    dk = (c * 255.92778);
    df = (c);
    dr = (c * -13.77778);
    rk = (c * 460.67);
  }
  if (v == "K") {
    dc = (c * -272.15);
    dk = (c);
    df = (c * -457.87);
    dr = (c * -217.72);
    rk = (c * 1.8);
  }
  if (v == "ºR") {
    dc = (c * 1.25);
    dk = (c * 274.4);
    df = (c * 34.25);
    dr = (c);
    rk = (c * 493.92);
  }
  if (v == "Rankine") {
    dc = (c * -272.59444);
    dk = (c * 0.55556);
    df = (c * -458.67);
    dr = (c * -21807556);
    rk = (c);
  }
}

void Reset() {
  dc = 0;
  dk = 0;
  dr = 0;
  df = 0;
  rk = 0;
}

class NhietdoPage extends StatefulWidget {
  @override
  State<NhietdoPage> createState() => Nhietdo();
}

class Nhietdo extends State<NhietdoPage> {
  String valueChoose = 'ºC';
  static String value = '';
  List<String> listItem = <String>[
    "ºC",
    "ºF",
    "k",
    "ºR",
    "Rankine",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Nhiệt độ"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                children: [
                  CustomRow(listItem, valueChoose, (val){
                    value = val;
                    setState(() {
                      if (val == '') {
                        Reset();
                      } else {
                        tinh(double.parse(value), valueChoose);
                      }
                    });
                  }, (newval){
                    setState(() {
                      valueChoose = newval!;
                      tinh(double.parse(value), valueChoose);
                    });
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Column(
                        children: [
                          buildata(dc),
                          buildata(df),
                          buildata(dk),
                          buildata(dr),
                          buildata(rk),
                        ],
                      ),
                      Column(children: [
                        builUnit('ºC'),
                        builUnit('ºF'),
                        builUnit('K'),
                        builUnit('ºR'),
                        builUnit('Rankine'),
                      ]),
                      Column(
                        children: [
                          builUnitName('Độ C'),
                          builUnitName('Độ F'),
                          builUnitName('Độ K'),
                          builUnitName('Độ R'),
                          builUnitName('Chu trình Rankine'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }

  @override
  Widget buildata(double data) {
    return Container(
      height: 40.0,
      width: 150.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        '$data',
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.clip,
      ),
    );
  }

  @override
  Widget builUnit(String unit) {
    return Container(
      height: 40.0,
      width: 60.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: Text('$unit', textAlign: TextAlign.center),
    );
  }

  @override
  Widget builUnitName(String unitname) {
    return Container(
      height: 40.0,
      width: 100.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: Text('$unitname', textAlign: TextAlign.center),
    );
  }
}
