import 'package:demo_flutter/rowTop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double skms = 0,
    smms = 0,
    sms = 0,
    smph = 0,
    skmh = 0,
    sknot = 0,
    smps = 0,
    sfts = 0;
void tinh(double c, String v) {
  if (v == "mm/s") {
    smms = c;
    sms = (c * 0.001);
    skms = (c * 1.0E-6);
    skmh = (c * 3.6E-6);
    smps = (c * 6.21371E-7);
    smph = (c * 0.00224);
    sfts = (c * 0.00328);
    sknot = (c * 0.00194);
  }
  if (v == "m/s") {
    smms = c * 1000;
    sms = c;
    skms = (c * 0.001);
    skmh = (c * 3.6);
    smps = (c * 0.00062);
    smph = (c * 2.23694);
    sfts = (c * 3.28084);
    sknot = (c * 194384);
  }
  if (v == "km/s") {
    smms = c * 1000000;
    sms = (c * 1000);
    skms = c;
    skmh = (c * 3600);
    smps = (c * 0.62137);
    smph = (c * 2236.93629);
    sfts = (c * 3280.8399);
    sknot = (c * 1943.84449);
  }
  if (v == "km/h") {
    smms = (c * 277.77778);
    sms = (c * 0.27778);
    skms = (c * 0.00028);
    skmh = c;
    smps = (c * 0.00017);
    smph = (c * 0.62137);
    sfts = (c * 0.91134);
    sknot = (c * 0.53996);
  }
  if (v == "mps") {
    smms = (c * 1609344);
    sms = (c * 1609.344);
    skms = (c * 1.60934);
    skmh = (c * 5793.6384);
    smps = c;
    smph = (c * 3600);
    sfts = (c * 5280);
    sknot = (c * 3128.31447);
  }
  if (v == "mph") {
    smms = (c * 447.04);
    sms = (c * 0.44704);
    skms = (c * 0.00045);
    skmh = (c * 1.60934);
    smps = (c * 0.00028);
    smph = c;
    sfts = (c * 1.46667);
    sknot = (c * 0.86898);
  }
  if (v == "fts") {
    smms = (c * 304.8);
    sms = (c * 0.3048);
    skms = (c * 0.0003);
    skmh = (c * 1.09728);
    smps = (c * 0.00019);
    smph = (c * 0.68182);
    sfts = c;
    sknot = (c * 0.59248);
  }
  if (v == "kn") {
    smms = (c * 514.44444);
    sms = (c * 0.51444);
    skms = (c * 0.00051);
    skmh = (c * 1.852);
    smps = (c * 0.00032);
    smph = (c * 1.15078);
    sfts = (c * 1.68781);
    sknot = c;
  }
}

void Reset() {
  skms = 0;
  smms = 0;
  sms = 0;
  smph = 0;
  skmh = 0;
  sknot = 0;
  smps = 0;
  sfts = 0;
}

class VantocPage extends StatefulWidget {
  @override
  State<VantocPage> createState() => Vantoc();
}

class Vantoc extends State<VantocPage> {
  static String valueChoose = 'mm/s';
  static String value = '';
  List<String> listItem = <String>[
    'mm/s',
    'm/s',
    'km/s',
    'km/h',
    'mps',
    'mph',
    'fts',
    'kn'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Vận tốc"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                          builddata(smms),
                          builddata(sms),
                          builddata(skms),
                          builddata(skmh),
                          builddata(smps),
                          builddata(smph),
                          builddata(sfts),
                          builddata(sknot)
                        ],
                      ),
                      Column(
                        children: [
                          buildUnit('mm/s'),
                          buildUnit('m/s'),
                          buildUnit('km/s'),
                          buildUnit('km/h'),
                          buildUnit('mps'),
                          buildUnit('mph'),
                          buildUnit('fts'),
                          buildUnit('kn')
                        ],
                      ),
                      Column(
                        children: [
                          buildUnitName('Milimet/giây'),
                          buildUnitName('Mét/giây'),
                          buildUnitName('Kilomet/giây'),
                          buildUnitName('Kilome/giờ'),
                          buildUnitName('Dặm/giây'),
                          buildUnitName('Dặm/giờ'),
                          buildUnitName('Foot/giây'),
                          buildUnitName('Knot'),
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

  Widget builddata(double data) {
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
