
import 'package:demo_flutter/rowTop.dart';
import 'package:flutter/material.dart';

double nmg=0,ngam=0,nkg=0,nta=0,nyen=0,ntan=0,nounce=0,npound=0,nstone=0;
void tinh(double c, String v) {
  if(v=="mg"){
    nmg=c;
    ngam= (c*0.001);
    nkg= (c*1.0E-6);
    nta=(c*1.0E-8);
    nyen= (c*1.0E-7);
    ntan=(c*1.0E-9);
    nounce=(c*3.53E-5);
    npound=(c*2.2E-6);
    nstone=(c*1.57E-7);
    
  }
  if(v=="g"){
    nmg=c*1000;
    ngam= c;
    nkg= (c*1.0E-3);
    nta=(c*1.0E-5);
    nyen= (c*1.0E-4);
    ntan=(c*1.0E-6);
    nounce=(c*3.53E-2);
    npound=(c*2.2E-3);
    nstone=(c*1.57E-4);
    
  }
  if(v=="kg"){
    nmg=c*1000000;
    ngam= c*1000;
    nkg= c;
    nta=(c*0.01);
    nyen= (c*0.1);
    ntan=(c*1.0E-3);
    nounce=(c*35.274);
    npound=(c*2.2);
    nstone=(c*0.16);
    
  }
  if(v=="yến"){
    nmg=c*10000000;
    ngam= c*10000;
    nkg= c*10;
    nta=(c*0.1);
    nyen=c;
    ntan=(c*0.01);
    nounce=(c*352.74);
    npound=(c*22.05);
    nstone=(c*1.575);
    
  }
  if(v=="tạ"){
    nmg=c*100000000;
    ngam= c*100000;
    nkg= c*100;
    nta=c;
    nyen=c*10;
    ntan=(c*0.1);
    nounce=(c*3527.396);
    npound=(c*220.46);
    nstone=(c*15.75);
    
  }
  if(v=="t"){
    nmg=c*1000000000;
    ngam= c*1000000;
    nkg= c*1000;
    nta=c*10;
    nyen=c*100;
    ntan=c;
    nounce=(c*35273.96);
    npound=(c*2204.62);
    nstone=(c*157.47);
    
  }
  if(v=="oz"){
    nmg=(c*28349.5231);
    ngam= (c*28.35);
    nkg= (c*0.028349493942109);
    nta=(c*0.00028349493942109);
    nyen=(c*0.0028349493942109);
    ntan=(c*0.000028349493942109);
    nounce=c;
    npound=(c*0.0625);
    nstone=(c*0.004464285714285715);
    
  }
  if(v=="st"){
    nmg=(c*6350293.18);
    ngam= (c*6350.29318);
    nkg= (c*6.35029318);
    nta=(c*0.0635029318);
    nyen= (c*0.635029318);
    ntan=(c*0.00635);
    nounce=(c*224);
    npound=(c*14);
    nstone=c;
    
  }
  if(v=="lb"){
    nmg=(c*453592.37);
    ngam= (c*453.59237);
    nkg= (c*0.45359);
    nta=(c*0.0045359);
    nyen= (c*0.045359);
    ntan=(c*0.00045);
    nounce=(c*16);
    npound=c;
    nstone=(c*0.07143);
    
  }
}

void Reset() {
  nmg=0;ngam=0;nkg=0;nta=0;nyen=0;ntan=0;nounce=0;npound=0;nstone=0;
}

class TrongluongPage extends StatefulWidget {
  @override
  State<TrongluongPage> createState() => Trongluong();
}

class Trongluong extends State<TrongluongPage> {
  String valueChoose = 'mg';
  static String value = '';
  List<String> listItem = <String>[
    "mg",
    "g",
    "kg",
    "yến",
    "tạ",
    "tấn",
    "oz",
    "psi",
    "lb",
    "st",
   
  ];

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
          appBar: AppBar(
            title: Text("Trọng lượng"),
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
                          buildata(nmg),
                          buildata(ngam),
                          buildata(nkg),
                          buildata(nyen),
                          buildata(nta),
                          buildata(ntan),
                          buildata(nounce),
                          buildata(npound),
                          buildata(nstone),
                        ],
                      ),
                      Column(children: [
                        builUnit('mg'),
                        builUnit('g'),
                        builUnit('kg'),
                        builUnit('Yến'),
                        builUnit('Tạ'),
                        builUnit('Tấn'),
                        builUnit('oz'),
                        builUnit('lb'),
                        builUnit('st'),
                                        ]),
                      Column(
                        children: [
                          builUnitName('Miligam'),
                          builUnitName('Gam'),
                          builUnitName('Kilogam'),
                          builUnitName('Yến'),
                          builUnitName('Tạ'),
                          builUnitName('Tấn'),
                          builUnitName('Ounce'),
                          builUnitName('Pound'),
                          builUnitName('Stone'),
                                  ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
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
