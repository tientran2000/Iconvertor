// ignore_for_file: unused_element
//import 'package:flutter/cupertino.dart';
import 'package:demo_flutter/rowTop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double skm = 0,
    smm = 0,
    scm = 0,
    sm = 0,
    sdm = 0,
    syd = 0,
    sin = 0,
    sft = 0,
    smi = 0;

class DientichPage extends StatefulWidget {
  @override
  State<DientichPage> createState() => Dientich();
}

void tinh(double c, String v) {
  if (v == "mm²") {
    skm = c * 6.2;
    skm = (1.0E-12 * c);
    smm = c;
    scm = c / 100;
    sdm = (c * 1.0E-10);
    sm = (c * 1.0E-6);
    sin = (c * 0.00155000310001);
    syd = (c * 1.1959900463E-6);
    smi = (c * 3.86102159E-13);
    sft = (c * 1.07639104167E-5);
  }
  if (v == "cm²") {
    skm = (c * 1.0E-10);
    smm = c * 100;
    scm = c;
    sdm = (c * 1.0E-8);
    sm = (c * 0.0001);
    sin = (c * 0.155000310001);
    syd = (c * 0.00011959900463);
    smi = (c * 3.86102159E-11);
    sft = (c * 0.00107639104167);
  }
  if (v == "ha") {
    skm = (c * 0.01);
    smm = (c * 10000000000.0);
    scm = c * 100000000;
    sdm = c;
    sm = c * 10000;
    sin = (c * 15500031);
    syd = (c * 11959.9);
    smi = (c * 0.00386102159);
    sft = (c * 107639.104);
  }
  if (v == "m²") {
    skm = (c * 1.0E-6);
    smm = c * 1000000;
    scm = c * 10000;
    sdm = (c * 0.0001);
    sm = c;
    sin = (c * 1550.003);
    syd = (c * 1.196);
    smi = (c * 3.86102159E-7);
    sft = (c * 10.764);
  }
  if (v == "km²") {
    skm = c;
    smm = (c * 1000000000000.0);
    scm = (c * 10000000000.0);
    sdm = c * 100;
    sm = c * 1000000;
    sin = (c * 1550003100.01);
    syd = (c * 1195990.046);
    smi = (c * 0.386102159);
    sft = (c * 10763910.417);
  }
  if (v == "in²") {
    skm = (c * 6.4515999999842E-10);
    smm = (c * 645.16);
    scm = (c * 6.452);
    sdm = (c * 6.4515999999842E-8);
    sm = (c * 0.00064515999999842);
    sin = c;
    syd = (c * 0.00077160493826902);
    smi = (c * 2.4909766889983E-10);
    sft = (c * 0.0069444444444211);
  }
  if (v == "ft²") {
    skm = (c * 9.2903040000084E-8);
    smm = (c * 92903.04);
    scm = (c * 929.03);
    sdm = (c * 9.2903040000084E-6);
    sm = (c * 0.092903040000084);
    sin = c * 144;
    syd = (c * 0.11111111111111);
    smi = (c * 3.5870064321696E-8);
    sft = c;
  }
  if (v == "yd²") {
    skm = (c * 8.3612736000076E-7);
    smm = (c * 836127.36);
    scm = (c * 8361.274);
    sdm = (c * 8.3612736000076E-5);
    sm = (c * 0.83612736000076);
    sin = c * 1296;
    syd = c;
    smi = (c * 3.2283057889526E-7);
    sft = c * 9;
  }
  if (v == "mi²") {
    skm = (c * 2.59);
    smm = (c * 2589988107266.7);
    scm = (c * 25899881072.667);
    sdm = (c * 258.999);
    sm = (c * 2589988.107);
    sin = (c * 4014489595.252);
    syd = (c * 3097599.996);
    smi = c;
    sft = (c * 27878399.967);
  } else
    return;
}

void Reset() {
  skm = 0;
  smm = 0;
  scm = 0;
  sm = 0;
  sdm = 0;
  syd = 0;
  sin = 0;
  sft = 0;
  smi = 0;
}

class Dientich extends State<DientichPage> {
  List<String> listItem = <String>[
    'mm²',
    'cm²',
    'm²',
    'ha',
    'km²',
    'yd²',
    'in²',
    'ft²',
    'mi²'
  ];
  static String valueChoose = 'mm²';
  static String value = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Diện tích"),
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
                        builddata(smm),
                        builddata(scm),
                        builddata(sm),
                        builddata(sdm),
                        builddata(skm),
                        builddata(syd),
                        builddata(sin),
                        builddata(sft),
                        builddata(smi),
                      ],
                    ),
                    Column(
                      children: [
                        buildUnit('mm²'),
                        buildUnit('cm²'),
                        buildUnit('m²'),
                        buildUnit('ha'),
                        buildUnit('km²'),
                        buildUnit('yd²'),
                        buildUnit('in²'),
                        buildUnit('ft²'),
                        buildUnit('mi²'),
                      ],
                    ),
                    Column(
                      children: [
                        buildUnitName('Milimet vuông'),
                        buildUnitName('Centimet vuông'),
                        buildUnitName('Met vuông'),
                        buildUnitName('Hecta'),
                        buildUnitName('Kilomet vuông'),
                        buildUnitName('Yard vuông'),
                        buildUnitName('Inch vuông'),
                        buildUnitName('Foot vuông'),
                        buildUnitName('Dặm vuông'),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget builddata(double data) {
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
  Widget buildUnit(String unit) {
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
  Widget buildUnitName(String unitname) {
    return Container(
      height: 40.0,
      width: 110.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: Text('$unitname', textAlign: TextAlign.center),
    );
  }
}
