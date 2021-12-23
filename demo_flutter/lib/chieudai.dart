import 'package:demo_flutter/rowTop.dart';
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
void tinh(double n, String v) {
  if (v == "mm") {
    skm = (n * 10e-6);
    smm = n;
    scm = n / 10;
    sdm = n / 100;
    sm = n / 1000;
    sin = (n * 0.039370);
    syd = (n / 914.4);
    smi = (n / 1.60934e6);
    sft = (n / 304.8);
  }
  if (v == "cm") {
    skm = (n * 10e-5);
    smm = n * 10;
    scm = n;
    sdm = n / 10;
    sm = n / 100;
    sin = (n * 0.39370098114);
    syd = (n * 0.010936100483);
    smi = (n * 6.21371E-6);
    sft = (n * 0.0328083992);
  }
  if (v == "dm") {
    skm = (n * 0.0001);
    smm = n * 100;
    scm = n * 10;
    sdm = n;
    sm = n / 10;
    sin = (n * 3.9370098114);
    syd = (n * 0.10936100483);
    smi = (n * 6.21371E-5);
    sft = (n * 0.328083992);
  }
  if (v == "m") {
    skm = (n * 0.001);
    smm = n * 1000;
    scm = n * 100;
    sdm = n * 10;
    sm = n;
    sin = (n * 39.370098114);
    syd = (n * 01.0936100483);
    smi = (n * 6.21371E-4);
    sft = (n * 03.28083992);
  }
  if (v == "km") {
    skm = n;
    smm = n * 1000000;
    scm = n * 100000;
    sdm = n * 10000;
    sm = n * 1000;
    sin = (n * 39370.098114);
    syd = (n * 1093.6100483);
    smi = (n * 0.621371);
    sft = (n * 3280.83992);
  }
  if (v == "in") {
    skm = (n * 2.54E-5);
    smm = (n * 25.4);
    scm = (n * 2.54);
    sdm = (n * 0.254);
    sm = (n * 0.0254);
    sin = n;
    syd = (n * 0.027777681557545);
    smi = (n * 1.5782815633346E-5);
    sft = (n * 0.083333292960053);
  }
  if (v == "ft") {
    skm = (n * 0.00030479999767864);
    smm = (n * 304.8);
    scm = (n * 30.48);
    sdm = (n * 3.048);
    sm = (n * 0.30479999767864);
    sin = n * 12;
    syd = (n * 0.33333234018318);
    smi = (n * 0.00018939387935758);
    sft = n;
  }
  if (v == "yd") {
    skm = (n * 0.00091440271745352);
    smm = (n * 914.40271745352);
    scm = (n * 91.440271745352);
    sdm = (n * 9.1440271745352);
    sm = (n * 0.91440271745352);
    sin = n * 36;
    syd = n;
    smi = (n * 0.00056818333094681);
    sft = n * 3;
  }
  if (v == "mi") {
    skm = (n * 1.609);
    smm = (n * 1609344.498);
    scm = (n * 160934.498);
    sdm = (n * 16093.4498);
    sm = (n * 1609.34498);
    sin = (n * 63360.051);
    syd = (n * 1759.995);
    smi = n;
    sft = (n * 5280.002);
  }
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

class ChieudaiPage extends StatefulWidget {
  @override
  State<ChieudaiPage> createState() => Chieudai();
}

class Chieudai extends State<ChieudaiPage> {
  static String valueChoose = 'mm';
  static String value = '';
  List<String> listItem = <String>[
    'mm',
    'cm',
    'dm',
    'm',
    'km',
    'yd',
    'in',
    'ft',
    'mi'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chiều dài"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),

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
                        builddata(sdm),
                        builddata(sm),
                        builddata(skm),
                        builddata(syd),
                        builddata(sin),
                        builddata(sft),
                        builddata(smi),
                      ],
                    ),
                    Column(
                      children: [
                        buildUnit('mm'),
                        buildUnit('cm'),
                        buildUnit('dm'),
                        buildUnit('m'),
                        buildUnit('km'),
                        buildUnit('yd'),
                        buildUnit('in'),
                        buildUnit('ft'),
                        buildUnit('mi'),
                      ],
                    ),
                    Column(
                      children: [
                        buildUnitName('Milimet'),
                        buildUnitName('Centimet'),
                        buildUnitName('Decimet'),
                        buildUnitName('Met'),
                        buildUnitName('Kilomet'),
                        buildUnitName('Yard'),
                        buildUnitName('Inch'),
                        buildUnitName('Foot'),
                        buildUnitName('Dặm'),
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
