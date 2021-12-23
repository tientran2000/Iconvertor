
import 'package:demo_flutter/rowTop.dart';
import 'package:flutter/material.dart';

double spa = 0,
    skpa = 0,
    smpa = 0,
    snpm = 0,
    smbar = 0,
    sbar = 0,
    sksi = 0,
    spsi = 0,
    scmh2o = 0,
    satm = 0,
    scmhg = 0,
    storr = 0;
void tinh(double c, String v) {
  if (v == "Pa") {
    spa = (c);
    skpa = (c * 0.001);
    smpa = (c * 1.0E-6);
    snpm = (c);
    smbar = (c * 0.01);
    sbar = (c * 0.0001);
    sksi = (c * 145038E-7);
    spsi = (c * 0.00015);
    scmh2o = (c * 0.01);
    satm = (c * 0.00001);
    scmhg = (c * 0.00075);
    storr = (c * 0.0075);
  }

  if (v == "kPa") {
    spa = (c * 1000);
    skpa = (c);
    smpa = (c * 0.001);
    snpm = (c * 1000);
    smbar = (c * 10);
    sbar = (c * 0.01);
    sksi = (c * 0.00015);
    spsi = (c * 0.14504);
    scmh2o = (c * 10.19744);
    satm = (c * 0.00987);
    scmhg = (c * 0.75006);
    storr = (c * 7.50064);
  }
  if (v == "MPa") {
    spa = (c * 1000000);
    skpa = (c * 1000);
    smpa = (c);
    snpm = (c * 1000000);
    smbar = (c * 10000);
    sbar = (c * 10);
    sksi = (c * 0.14504);
    spsi = (c * 145.0377);
    scmh2o = (c * 10197.44289);
    satm = (c * 9.86923);
    scmhg = (c * 750.0638);
    storr = (c * 7500.638);
  }
  if (v == "N/m²") {
    spa = (c);
    skpa = (c * 0.001);
    smpa = (c * 1.0E-6);
    snpm = (c);
    smbar = (c * 0.01);
    sbar = (c * 0.0001);
    sksi = (c * 145038E-7);
    spsi = (c * 0.00015);
    scmh2o = (c * 0.01);
    satm = (c * 0.00001);
    scmhg = (c * 0.00075);
    storr = (c * 0.0075);
  }
  if (v == "mmBar") {
    spa = (c * 100);
    skpa = (c * 0.1);
    smpa = (c * 0.0001);
    snpm = (c * 100);
    smbar = (c);
    sbar = (c * 0.001);
    sksi = (c * 0.00001);
    spsi = (c * 0.0145);
    scmh2o = (c * 1.01974);
    satm = (c * 0.00099);
    scmhg = (c * 0.07501);
    storr = (c * 0.75006);
  }
  if (v == "Bar") {
    spa = (c * 100000);
    skpa = (c * 100);
    smpa = (c * 0.1);
    snpm = (c * 100000);
    smbar = (c * 1000);
    sbar = (c);
    sksi = (c * 0.0145);
    spsi = (c * 14.50377);
    scmh2o = (c * 1019.74429);
    satm = (c * 0.98692);
    scmhg = (c * 75.00638);
    storr = (c * 750.0638);
  }
  if (v == "ksi") {
    spa = (c * 6.89476E6);
    skpa = (c * 6894.75909);
    smpa = (c * 6.89476);
    snpm = (c * 6.89476E6);
    smbar = (c * 68947.59087);
    sbar = (c * 68.94759);
    sksi = (c);
    spsi = (c * 1000);
    scmh2o = (c * 70308.91202);
    satm = (c * 68.04598);
    scmhg = (c * 5171.5092);
    storr = (c * 51715.09201);
  }
  if (v == "psi") {
    spa = (c * 6894.75909);
    skpa = (c * 6.89476);
    smpa = (c * 0.00689);
    snpm = (c * 6894.75909);
    smbar = (c * 68.94759);
    sbar = (c * 0.06895);
    sksi = (c * 0.001);
    spsi = (c);
    scmh2o = (c * 70.30891);
    satm = (c * 0.06805);
    scmhg = (c * 5.17151);
    storr = (c * 51.71509);
  }
  if (v == "cmH2O") {
    spa = (c * 98.0638);
    skpa = (c * 0.09806);
    smpa = (c * 0.0001);
    snpm = (c * 98.0638);
    smbar = (c * 0.98064);
    sbar = (c * 0.00098);
    sksi = (c * 0.00001);
    spsi = (c * 0.01422);
    scmh2o = (c);
    satm = (c * 0.00097);
    scmhg = (c * 0.07355);
    storr = (c * 0.73554);
  }
  if (v == "atm") {
    spa = (c * 101324.99658);
    skpa = (c * 101.325);
    smpa = (c * 0.10132);
    snpm = (c * 101324.99658);
    smbar = (c * 1013.24997);
    sbar = (c * 1.01325);
    sksi = (c * 0.0147);
    spsi = (c * 14.69594);
    scmh2o = (c * 1033.25587);
    satm = (c);
    scmhg = (c * 76.00021);
    storr = (c * 760.00212);
  }
  if (v == "cmHg") {
    spa = (c * 1333.21992);
    skpa = (c * 1.33322);
    smpa = (c * 0.00133);
    snpm = (c * 1333.21992);
    smbar = (c * 13.3322);
    sbar = (c * 0.01333);
    sksi = (c * 0.00019);
    spsi = (c * 0.19337);
    scmh2o = (c * 13.59543);
    satm = (c * 0.01316);
    scmhg = (c);
    storr = (c * 10);
  }
  if (v == "torr") {
    spa = (c * 133.321992);
    skpa = (c * 0.133322);
    smpa = (c * 0.000133);
    snpm = (c * 133.321992);
    smbar = (c * 1.33322);
    sbar = (c * 0.001333);
    sksi = (c * 0.000019);
    spsi = (c * 0.019337);
    scmh2o = (c * 1.359543);
    satm = (c * 0.001316);
    scmhg = (c * 0.1);
    storr = (c);
  }
}

void Reset() {
  spa = 0;
  skpa = 0;
  smpa = 0;
  snpm = 0;
  smbar = 0;
  sbar = 0;
  sksi = 0;
  spsi = 0;
  scmh2o = 0;
  satm = 0;
  scmhg = 0;
  storr = 0;;
}

class ApsuatPage extends StatefulWidget {
  @override
  State<ApsuatPage> createState() => Apsuat();
}

class Apsuat extends State<ApsuatPage> {
  String valueChoose = 'Pa';
  static String value = '';
  List<String> listItem = <String>[
  "Pa",
  "kPa",
  "MPa",
  "N/m²",
  "Bar",
  "mmBar",
  "ksi",
  "psi",
  "cmH2O",
  "atm",
  "cmHg",
  "torr",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Áp suất"),
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
                          buildata(spa),
                          buildata(skpa),
                          buildata(smpa),
                          buildata(snpm),
                          buildata(sbar),
                          buildata(smbar),
                          buildata(sksi),
                          buildata(spsi),
                          buildata(satm),
                          buildata(storr),
                          buildata(scmh2o),
                          buildata(scmhg),
                        ]
                      ),
                      Column(children: [
                        builUnit('Pa'),
                        builUnit('kPa'),
                        builUnit('MPa'),
                        builUnit('N/m²'),
                        builUnit('Bar'),
                        builUnit('mmBar'),
                        builUnit('ksi'),
                        builUnit('psi'),
                        builUnit('atm'),
                        builUnit('torr'),
                        builUnit('cmH20'),
                        builUnit('cmHg'),
                      ]),
                      Column(
                        children: [
                          builUnitName('Pascal'),
                          builUnitName('Kilopascal'),
                          builUnitName('Megapascal'),
                          builUnitName('Newton/Mét²'),
                          builUnitName('Bar'),
                          builUnitName('Milibar'),
                          builUnitName('Kilopound/Inch²'),
                          builUnitName('Pound/Inch²'),
                          builUnitName('Khí quyển vật lý'),
                          builUnitName('Torr'),
                          builUnitName('Xentimet cột nước'),
                          builUnitName('Xentimet cột thủy ngân'),


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
      child: Text('$data', textAlign: TextAlign.center,maxLines: 1,overflow: TextOverflow.clip,),
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
