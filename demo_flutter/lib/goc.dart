import 'package:demo_flutter/chieudai.dart';
import 'package:demo_flutter/rowTop.dart';
import 'package:flutter/material.dart';

double dc = 0, srad = 0, svq = 0, sgon = 0, smil = 0, sgrad = 0;
void tinh(double c, String v) {
  if (v == "Độ") {
    dc = (c);

    srad = (c * 0.0174533);
    svq = (c / 360);
    smil = (c * 17.77778);
    sgrad = (c * 1.11111);
    sgon = (c * 1.11111);
  }
  if (v == "Radian") {
    dc = (c * 180 / 3.14);
    srad = (c);
    svq = (c * 0.15915);
    smil = (c * 1018.59164);
    sgrad = (c * 63.66198);
    sgon = (c * 63.66198);
  }
  if (v == "Vòng quay") {
    dc = (c * 360);
    srad = (c * 6.28319);
    svq = (c);
    smil = (c * 6400);
    sgrad = (c * 400);
    sgon = (c * 400);
  }
  if (v == "Mil(NATO)") {
    dc = (c * 0.05625);
    srad = (c * 0.00098);
    svq = (c * 0.00016);
    smil = (c * 1);
    sgrad = (c * 0.0625);
    sgon = (c * 0.0625);
  }
  if (v == "Grad") {
    dc = (c * 0.9);
    srad = (c * 0.01571);
    svq = (c * 0.0025);
    smil = (c * 16);
    sgrad = (c * 1);
    sgon = (c * 1);
  }
  if (v == "Gon") {
    dc = (c * 0.9);
    srad = (c * 0.01571);
    svq = (c * 0.0025);
    smil = (c * 16);
    sgrad = (c * 1);
    sgon = (c * 1);
  }
}

void Reset() {
  dc = 0;
  srad = 0;
  svq = 0;
  sgon = 0;
  smil = 0;
  sgrad = 0;
}

class GocPage extends StatefulWidget {
  @override
  State<GocPage> createState() => Goc();
}

class Goc extends State<GocPage> {
  static String valueChoose = 'Độ';
  static String value = '';
  List<String> listItem = <String>[
    'Độ',
    'Radian',
    'Vòng quay',
    'Mil(NATO)',
    'Grad',
    'Gon'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Góc"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
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
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Column(
                          children: [
                            builddata(dc),
                            builddata(srad),
                            builddata(svq),
                            builddata(smil),
                            builddata(sgrad),
                            builddata(sgon),
                          ],
                        ),
                        Column(
                          children: [
                            buildUnitName('Độ'),
                            buildUnitName('Radian'),
                            buildUnitName('Vòng quay'),
                            buildUnitName('Mil(NATO)'),
                            buildUnitName('Grad'),
                            buildUnitName('Gon'),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  Widget builddata(double data) {
    return Container(
      height: 40.0,
      width: 200.0,
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
