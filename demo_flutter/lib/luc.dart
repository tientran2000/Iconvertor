
import 'package:demo_flutter/rowTop.dart';
import 'package:flutter/material.dart';

double smnewton=0,snewton=0,sknewton=0,sdyn=0,sjpm=0,spapm=0,skip=0,sozf=0,sgf=0;
void tinh(double c, String v) {
  if(v=="mN"){
    smnewton=  (c);
    snewton= (c*0.001 );
    sknewton=  (c*1.0E-6);
    sdyn=(c*100);
    sjpm=(c*0.001);
    spapm=(c*0.001);
    skip=(c*2.24809E-7);
    sozf=(c*0.0036);
    sgf=(c*0.0001);
  }
  if(v=="N"){
    smnewton=  (c*1000);
    snewton= (c);
    sknewton=  (c*1.0E-3);
    sdyn=(c*100000);
    sjpm=(c);
    spapm=(c);
    skip=(c*0.00022);
    sozf=(c*3.59694);
    sgf=(c*0.10197);
  }
  if(v=="kN"){
    smnewton=  (c*1000000);
    snewton= (c*1000 );
    sknewton=  (c);
    sdyn=(c*100000000);
    sjpm=(c*1000);
    spapm=(c*1000);
    skip=(c*0.22481);
    sozf=(c*3596.94309);
    sgf=(c*101.97162);
  }
  if(v=="dyn"){
    smnewton=  (c*0.01);
    snewton= (c*0.00001 );
    sknewton=  (c*1.0E-8);
    sdyn=(c);
    sjpm=(c*0.00001);
    spapm=(c*0.00001);
    skip=(c*2.24809E-9);
    sozf=(c*0.00004);
    sgf=(c*1.01972E-6);
  }
  if(v=="J/m"){
    smnewton=  (c*1000);
    snewton= (c);
    sknewton=  (c*1.0E-3);
    sdyn=(c*100000);
    sjpm=(c);
    spapm=(c);
    skip=(c*0.00022);
    sozf=(c*3.59694);
    sgf=(c*0.10197);
  }
  if(v=="Pa/m²"){
    smnewton=  (c*1000);
    snewton= (c);
    sknewton=  (c*1.0E-3);
    sdyn=(c*100000);
    sjpm=(c);
    spapm=(c);
    skip=(c*0.00022);
    sozf=(c*3.59694);
    sgf=(c*0.10197);
  }
  if(v=="kip"){
    smnewton=  (c*4.44822E6);
    snewton= (c*4448.22162 );
    sknewton=  (c*4.44822162);
    sdyn=(c*100);
    sjpm=(c*4448.22162);
    spapm=(c*4448.22162);
    skip=(c);
    sozf=(c*16000);
    sgf=(c*453.59237);
  }
  if(v=="ozf"){
    smnewton=  (c*278.01385);
    snewton= (c*0.27801 );
    sknewton=  (c*0.00028);
    sdyn=(c*27801.3851);
    sjpm=(c*0.27801);
    spapm=(c*0.27801);
    skip=(c*0.00006);
    sozf=(c);
    sgf=(c*0.02835);
  }
  if(v=="Gf"){
    smnewton=  (c*9806.65);
    snewton= (c*9.80665 );
    sknewton=  (c*0.00981);
    sdyn=(c*980665);
    sjpm=(c*9.80665);
    spapm=(c*9.80665);
    skip=(c*0.0022);
    sozf=(c*35.27396);
    sgf=(c);
  }
}

void Reset() {
  smnewton=0;snewton=0;sknewton=0;sdyn=0;sjpm=0;spapm=0;skip=0;sozf=0;sgf=0;
}

class LucPage extends StatefulWidget {
  @override
  State<LucPage> createState() => Luc();
}

class Luc extends State<LucPage> {
  static String valueChoose = 'mN';
  static String value = '';
  List<String> listItem = <String>[
  "mN",
  "N",
  "kN",
  "dyn",
  "J/m",
  "Pa/m²",
  "kip",
  "ozf",
  "Gf"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Lực"),
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
                          buildata(smnewton),
                          buildata(snewton),
                          buildata(sknewton),
                          buildata(sdyn),
                          buildata(sjpm),
                          buildata(spapm),
                          buildata(skip),
                          buildata(sozf),
                          buildata(sgf)
                        ],
                      ),
                      Column(children: [
                        builUnit('mN'),
                        builUnit('N'),
                        builUnit('kN'),
                        builUnit('dyn'),
                        builUnit('J/m'),
                        builUnit('Pa/m²'),
                        builUnit('kip'),
                        builUnit('ozf'),
                        builUnit('Gf'),
                      ]),
                      Column(
                        children: [
                          builUnitName('Milinewton'),
                          builUnitName('Newton'),
                          builUnitName('Kilonewton'),
                          builUnitName('Dyne'),
                          builUnitName('Joule/Mét'),
                          builUnitName('Pascal/Mét²'),
                          builUnitName('Kíp lực'),
                          builUnitName('Ounce-force'),
                          builUnitName('Grave-force')
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
