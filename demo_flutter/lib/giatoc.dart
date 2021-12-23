

import 'package:demo_flutter/rowTop.dart';
import 'package:flutter/material.dart';

double scms = 0, sgal = 0, sms = 0, sg = 0, sins = 0, sfts = 0;
void tinh(double c, String v) {
  if (v == "cm/s²") {
    scms = c;
    sms = (c * 0.01);
    sins = (c * 0.394);
    sfts = (c * 0.033);
    sg = (c * 0.001);
    sgal = (c);
  }
  if (v == "m/s²") {
    scms = c * 36;
    sms = (c * 1);
    sins = (c * 0.37);
    sfts = (c * 3.281);
    sg = (c * 0.102);
    sgal = (c * 100);
  }
  if (v == "in/s²") {
    scms = (c * 2.54);
    sms = (c * 0.025);
    sins = (c);
    sfts = (c * 0.083);
    sg = (c * 0.003);
    sgal = (c * 2.54);
  }
  if (v == "ft/s²") {
    scms = (c * 980.665);
    sms = (c * 9.807);
    sins = (c * 386.089);
    sfts = (c);
    sg = (c);
    sgal = (c * 980.665);
  }
  if (v == "gal") {
    scms = c;
    sms = (c * 0.01);
    sins = (c * 0.394);
    sfts = (c * 0.033);
    sg = (c * 0.001);
    sgal = (c);
  }
  if (v == "g") {
    scms = (c * 980.665);
    sms = (c * 9.807);
    sins = (c * 386.089);
    sfts = (c * 32.174);
    sg = (c);
    sgal = (c * 980.665);
  }
}

void Reset() {
  scms = 0;
  sgal = 0;
  sms = 0;
  sg = 0;
  sins = 0;
  sfts = 0;
}

class GiatocPage extends StatefulWidget {
  @override
  State<GiatocPage> createState() => Giatoc();
}

class Giatoc extends State<GiatocPage> {
  static String valueChoose = 'cm/s²';
  static String value = '';
  List<String> listItem = <String>[
    'cm/s²',
    "m/s²",
    "in/s²",
    "ft/s²",
    "gal",
    "g",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gia tốc"),
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
                        buildata(scms),
                        buildata(sms),
                        buildata(sins),
                        buildata(sfts),
                        buildata(sgal),
                        buildata(sg)
                      ],
                    ),
                    Column(children: [
                      builUnit('cm/s²'),
                      builUnit('m/s²'),
                      builUnit('in/s²'),
                      builUnit('ft/s²'),
                      builUnit('gal'),
                      builUnit('g')
                    ]),
                    Column(
                      children: [
                        builUnitName('Xentimet/giây²'),
                        builUnitName('Mét/giây²'),
                        builUnitName('Inch/giây²'),
                        builUnitName('Foot/giây²'),
                        builUnitName('Gal'),
                        builUnitName('Đơn vị g')
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
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
