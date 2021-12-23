import 'package:demo_flutter/rowTop.dart';
import 'package:flutter/material.dart';

String mm = '';
double skm = 0,
    smm = 0,
    sml = 0,
    sm = 0,
    skl = 0,
    syd = 0,
    sin = 0,
    sft = 0,
    sl = 0,
    sgal = 0,
    spt = 0,
    sfl = 0;
void tinh(double c, String v) {
  if (v == "mm³") {
    skm = (c * 1.0E-18);
    smm = c;
    sm = (c * 1.0E-9);
    sml = (c * 0.001);
    ;
    skl = (c * 1.0E-9);
    sl = (c * 1.0E-6);
    ;
    sgal = (c * 2.64172E-7);
    ;
    spt = (c * 2.113375999994E-6);
    ;
    sfl = (c * 3.3814E-5);
    sin = (c * 6.10237E-5);
    syd = (c * 1.30795E-9);
    sft = (c * 3.53147E-8);
  }
  if (v == "m³") {
    skm = (c * 1.0E-9);
    smm = (c * 1000000000);
    sm = c;
    sml = (c * 1000000);
    ;
    skl = c;
    sl = (c * 1000);
    ;
    sgal = (c * 264.172);
    ;
    spt = (c * 2113.376);
    ;
    sfl = (c * 33814);
    sin = (c * 61023.7);
    syd = (c * 1.308);
    sft = (c * 35.315);
  }
  if (v == "km³") {
    skm = c;
    smm = (c * 1.0E+18);
    sm = (c * 1000000000);
    sml = (c * 1.0E+15);
    skl = (c * 1000000000);
    sl = (c * 1000000000000.0);
    sgal = (c * 264172000000.0);
    spt = (c * 2113375999994.0);
    sfl = (c * 33814000000000.0);
    sin = (c * 61023700000000.0);
    syd = (c * 1307950000);
    sft = (c * 35314700000.0);
  }
  if (v == "ml") {
    skm = (c * 1.0E-15);
    smm = c * 1000;
    sm = (c * 1.0E-6);
    sml = c;
    skl = (c * 1.0E-6);
    sl = (c * 0.001);
    sgal = (c * 0.000264172);
    spt = (c * 0.002113375999994);
    sfl = (c * 0.033814);
    sin = (c * 0.0610237);
    syd = (c * 1.30795E-6);
    sft = (c * 3.53147E-5);
  }
  if (v == "l") {
    skm = (c * 1.0E-12);
    smm = c * 1000000;
    sm = (c * 0.001);
    sml = c * 1000;
    skl = (c * 0.001);
    sl = c;
    sgal = (c * 0.264172);
    spt = (c * 2.113);
    sfl = (c * 33.814);
    sin = (c * 61.024);
    syd = (c * 0.00130795);
    sft = (c * 0.0353147);
  }
  if (v == "kl") {
    skm = (c * 1.0E-9);
    smm = (c * 1000000000);
    sm = c;
    sml = (c * 1000000);
    ;
    skl = c;
    sl = (c * 1000);
    ;
    sgal = (c * 264.172);
    ;
    spt = (c * 2113.376);
    ;
    sfl = (c * 33814);
    sin = (c * 61023.7);
    syd = (c * 1.308);
    sft = (c * 35.315);
  }
  if (v == "yd³") {
    skm = (c * 7.6455522000076E-10);
    smm = (c * 764555220.001);
    ;
    sm = (c * 0.76455522000076);
    sml = (c * 764555.22);
    ;
    skl = (c * 0.76455522000076);
    sl = (c * 764.555);
    ;
    sgal = (c * 201.974);
    ;
    spt = (c * 1615.793);
    ;
    sfl = (c * 25852.67);
    sin = (c * 46655.988);
    syd = c;
    sft = (c * 27);
  }
  if (v == "in³") {
    skm = (c * 1.6387075841026E-14);
    smm = (c * 16387.076);
    sm = (c * 1.6387075841026E-5);
    sml = (c * 16.387);
    skl = (c * 1.6387075841026E-5);
    sl = (c * 0.016387075841026);
    sgal = (c * 0.0043290065990754);
    spt = (c * 0.034632052792505);
    sfl = (c * 0.55411258248844);
    sin = c;
    syd = (c * 2.143347584627E-5);
    sft = (c * 0.00057870466720307);
  }
  if (v == "ft³") {
    skm = (c * 2.8316819907857E-11);
    smm = (c * 28316819.908);
    sm = (c * 0.028316819907857);
    sml = (c * 28316.82);
    ;
    skl = (c * 0.028316819907857);
    sl = (c * 28.317);
    ;
    sgal = (c * 7.481);
    ;
    spt = (c * 59.844);
    ;
    sfl = (c * 957.505);
    sin = (c * 1727.997);
    syd = (c * 0.037036984598482);
    sft = c;
  }
  if (v == "gal") {
    skm = (c * 3.785412534258E-12);
    smm = (c * 3785412.534);
    sm = (c * 0.003785412534258);
    sml = (c * 3785.413);
    ;
    skl = (c * 0.003785412534258);
    sl = (c * 3.785);
    sgal = c;
    spt = (c * 8);
    ;
    sfl = (c * 128);
    sin = (c * 231);
    syd = (c * 0.0049511303241827);
    sft = (c * 0.13368070802356);
  }
  if (v == "pt") {
    skm = (c * 4.731765667836E-13);
    smm = (c * 473176.567);
    sm = (c * 0.0004731765667836);
    sml = (c * 473.177);
    ;
    skl = (c * 0.0004731765667836);
    sl = (c * 0.4731765667836);
    ;
    sgal = (c * 0.12500000000036);
    ;
    spt = c;
    sfl = (c * 16);
    sin = (c * 28.875);
    syd = (c * 0.0006188912905246);
    sft = (c * 0.016710088502993);
  }
  if (v == "fl_oz") {
    skm = (c * 2.9573549417401E-14);
    smm = (c * 29573.549);
    sm = (c * 2.9573549417401E-5);
    sml = (c * 29.574);
    ;
    skl = (c * 2.9573549417401E-5);
    sl = (c * 0.029573549417401);
    ;
    sgal = (c * 0.0078125036966937);
    ;
    spt = (c * 0.062500029573371);
    ;
    sfl = c;
    sin = (c * 1.805);
    syd = (c * 3.868072396049E-5);
    sft = (c * 0.0010443810256107);
  }
}

void Reset() {
  skm = 0;
  smm = 0;
  sm = 0;
  sml = 0;
  skl = 0;
  sl = 0;
  sgal = 0;
  spt = 0;
  sfl = 0;
  sin = 0;
  syd = 0;
  sft = 0;
}

class ThetichPage extends StatefulWidget {
  @override
  State<ThetichPage> createState() => Thetich();
}


class Thetich extends State<ThetichPage> {
  static String valueChoose = 'mm³';
  static String value = '';
  List<String> listItem = <String>[
    "mm³",
    "m³",
    "km³",
    "ml",
    "l",
    "kl",
    "yd³",
    "ft³",
    "in³",
    "gal",
    "pt",
    "fl_oz"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Thể tích"),
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
                        builddata(sm),
                        builddata(skm),
                        builddata(sml),
                        builddata(sl),
                        builddata(skl),
                        builddata(syd),
                        builddata(sft),
                        builddata(sin),
                        builddata(sgal),
                        builddata(spt),
                        builddata(sfl),
                      ],
                    ),
                    Column(
                      children: [
                        buildUnit('mm³'),
                        buildUnit('m³'),
                        buildUnit('km³'),
                        buildUnit('ml'),
                        buildUnit('l'),
                        buildUnit('kl'),
                        buildUnit('yd³'),
                        buildUnit('ft³'),
                        buildUnit('in³'),
                        buildUnit('gal'),
                        buildUnit('pt'),
                        buildUnit('fl_oz'),
                      ],
                    ),
                    Column(
                      children: [
                        buildUnitName('Milimet khối'),
                        buildUnitName('Met khối'),
                        buildUnitName('Kilomet khối'),
                        buildUnitName('Mililit'),
                        buildUnitName('Lit'),
                        buildUnitName('Kilolit'),
                        buildUnitName('Yard khối'),
                        buildUnitName('Foot khối'),
                        buildUnitName('Inch khối'),
                        buildUnitName('Gallon'),
                        buildUnitName('Pint'),
                        buildUnitName('Ounce'),
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
