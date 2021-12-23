import 'package:demo_flutter/rowTop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double nms = 0,
    ngiay = 0,
    nphut = 0,
    ngio = 0,
    nngay = 0,
    nthang = 0,
    nnam = 0,
    ntuan = 0,
    ntheki = 0,
    nthapki = 0;
void tinh(double c, String v) {
  if (v == "ms") {
    nms = c;
    ngiay = (c * 0.001);
    nphut = (c * 1.6666666666667E-5);
    ngio = (c * 2.7777777777778E-7);
    nngay = (c * 1.1574074074067E-8);
    ntuan = (c * 1.6534391534333E-9);
    nthang = (c * 3.8026486208333E-10);
    nnam = (c * 3.16887385E-11);
    nthapki = (c * 3.1709792E-12);
    ntheki = (c * 3.1709791666667E-13);
  }
  if (v == "s") {
    nms = c * 1000;
    ngiay = c;
    nphut = (c * 0.016666666666667);
    ngio = (c * 0.00027777777777778);
    nngay = (c * 1.1574074074067E-5);
    ntuan = (c * 1.6534391534333E-6);
    nthang = (c * 3.8026486208333E-7);
    nnam = (c * 3.16887385E-8);
    nthapki = (c * 3.1709792E-9);
    ntheki = (c * 3.1709791666667E-10);
  }
  if (v == "min") {
    nms = c * 60000;
    ngiay = (c * 60);
    nphut = c;
    ngio = (c * 0.016666666666667);
    nngay = (c * 0.000694444444444);
    ntuan = (c * 9.9206349206E-5);
    nthang = (c * 2.2815891725E-5);
    nnam = (c * 1.90132431E-6);
    nthapki = (c * 1.90258752E-7);
    ntheki = (c * 1.9025875E-8);
  }
  if (v == "h") {
    nms = c * 3600000;
    ngiay = (c * 3600);
    nphut = (c * 60);
    ngio = c;
    nngay = (c * 0.041666666666639);
    ntuan = (c * 0.0059523809523599);
    nthang = (c * 0.0013689535035);
    nnam = (c * 0.0001140794586);
    nthapki = (c * 1.141552512E-5);
    ntheki = (c * 1.1415525E-6);
  }
  if (v == "d") {
    nms = c * 86400000;
    ngiay = (c * 86400);
    nphut = (c * 1440);
    ngio = (c * 24);
    nngay = c;
    ntuan = (c * 0.14285714285673);
    nthang = (c * 0.032854884084021);
    nnam = (c * 0.0027379070064018);
    nthapki = (c * 0.00027397260288018);
    ntheki = (c * 2.7397260000018E-5);
  }
  if (v == "wk") {
    nms = (c * 604800000.002);
    ngiay = (c * 604800);
    nphut = (c * 10080);
    ngio = (c * 168);
    nngay = (c * 7);
    ntuan = (c);
    nthang = (c * 0.22998418858881);
    nnam = (c * 0.019165349044867);
    nthapki = (c * 0.0019178082201668);
    ntheki = (c * 0.00019178082000068);
  }
  if (v == "mon") {
    nms = (c * 2629745999.989);
    ngiay = (c * 2629746);
    nphut = (c * 43829.1);
    ngio = (c * 730.485);
    nngay = (c * 30.437);
    ntuan = (c * 4.348);
    nthang = (c);
    nnam = (c * 0.083333333315071);
    nthapki = (c * 0.0083388698672482);
    ntheki = (c * 0.000833886977959);
  }
  if (v == "yr") {
    nms = (c * 31556952006.783);
    ngiay = (c * 31556952.007);
    nphut = (c * 525949.2);
    ngio = (c * 8765.82);
    nngay = (c * 365.243);
    ntuan = (c * 52.178);
    nthang = (c * 12);
    nnam = c;
    nthapki = (c * 0.10006643842891);
    ntheki = (c * 0.010006643737701);
  }
  if (v == "dec") {
    nms = (c * 315359999838.54);
    ngiay = (c * 315359999.839);
    nphut = (c * 5255999.997);
    ngio = (c * 87600);
    nngay = (c * 3650);
    ntuan = (c * 521.429);
    nthang = (c * 119.92);
    nnam = (c * 9.993);
    nthapki = c;
    ntheki = (c * 0.0999999989488);
  }
  if (v == "ce") {
    nms = (c * 3153600031536.0);
    ngiay = (c * 3153600031.536);
    nphut = (c * 52560000.526);
    ngio = (c * 876000.009);
    nngay = (c * 36500);
    ntuan = (c * 5214.286);
    nthang = (c * 1199.203);
    nnam = (c * 99.934);
    nthapki = (c * 10);
    ntheki = c;
  }
}

void Reset() {
  nms = 0;
  ngiay = 0;
  nphut = 0;
  ngio = 0;
  nngay = 0;
  nthang = 0;
  nnam = 0;
  ntuan = 0;
  ntheki = 0;
  nthapki = 0;
}

class ThoigianPage extends StatefulWidget {
  @override
  State<ThoigianPage> createState() => Thoigian();
}

class Thoigian extends State<ThoigianPage> {
  String valueChoose = 'ms';
  static String value = '';
  List<String> listItem = <String>[
    "ms",
    "s",
    "min",
    "h",
    "d",
    "wk",
    "ksi",
    "mon",
    "yr",
    "dec",
    "ce",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Thời gian"),
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
                        buildata(nms),
                        buildata(ngiay),
                        buildata(nphut),
                        buildata(ngio),
                        buildata(nngay),
                        buildata(ntuan),
                        buildata(nthang),
                        buildata(nnam),
                        buildata(nthapki),
                        buildata(ntheki),
                      ],
                    ),
                    Column(children: [
                      builUnit('ms'),
                      builUnit('s'),
                      builUnit('min'),
                      builUnit('h'),
                      builUnit('d'),
                      builUnit('wk'),
                      builUnit('mon'),
                      builUnit('yr'),
                      builUnit('dec'),
                      builUnit('ce'),
                    ]),
                    Column(
                      children: [
                        builUnitName('Mili giây'),
                        builUnitName('Giây'),
                        builUnitName('Phút'),
                        builUnitName('Giờ'),
                        builUnitName('Ngày'),
                        builUnitName('Tuần'),
                        builUnitName('Tháng'),
                        builUnitName('Năm'),
                        builUnitName('Thập kỉ'),
                        builUnitName('Thế kỉ'),
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
