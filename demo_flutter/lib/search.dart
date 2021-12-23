import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:demo_flutter/apsuat.dart';
import 'package:demo_flutter/bmi.dart';
import 'package:demo_flutter/chieudai.dart';
import 'package:demo_flutter/dientich.dart';
import 'package:demo_flutter/giatoc.dart';
import 'package:demo_flutter/goc.dart';
import 'package:demo_flutter/kichco.dart';
import 'package:demo_flutter/nhietdo.dart';
import 'package:demo_flutter/sohoc.dart';
import 'package:demo_flutter/thetich.dart';
import 'package:demo_flutter/thoigian.dart';
import 'package:demo_flutter/trongluong.dart';
import 'package:demo_flutter/vantoc.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => Search();
}

class Search extends State<SearchPage> {
  var ctrl = new TextEditingController();
  List<String> listItem = <String>[
    "Áp suất",
    "Độ dài",
    "Diện tích",
    "Thể tích",
    "Trọng lượng",
    "Thời gian",
    "Vận tốc",
    "Gia tốc",
    "BMI",
    "Số học",
    "Tiền tệ",
    "Kích cỡ",
    "Nhiệt độ",
    "Góc",
    "Lực"
  ];
  // GlobalKey keyy =
  // new GlobalKey<AutoCompleteTextFieldState<String>>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tìm kiếm'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            AutoCompleteTextField(
                controller: ctrl,
                suggestions: listItem,
                clearOnSubmit: false,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                    suffixIcon: new Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                itemSubmitted: (dynamic item) {
                  ctrl.text = item;
                  chuyen(context, item);
                },
                itemBuilder: (context, item) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Text(
                          item.toString(),
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  );
                },
                itemSorter: (a, b) {
                  return a.toString().compareTo(b.toString());
                },
                itemFilter: ( item, query) {
                  return item
                      .toString()
                      .toLowerCase()
                      .startsWith(query.toString().toLowerCase());
                })
          ],
        ),
      ),
    );
  }

}
void chuyen(BuildContext context,String s){
  if(s.toLowerCase()=='áp suất'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => ApsuatPage()));
  }
  if(s.toLowerCase()=='độ dài'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => ChieudaiPage()));
  }
  if(s.toLowerCase()=='diện tích'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => DientichPage()));
  }
  if(s.toLowerCase()=='thể tích'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => ThetichPage()));
  }
  if(s.toLowerCase()=='trọng lượng'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => TrongluongPage()));
  }
  if(s.toLowerCase()=='bmi'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => BMIPage()));
  }
  if(s.toLowerCase()=='nhiệt độ'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => NhietdoPage()));
  }if(s.toLowerCase()=='vận tốc'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => VantocPage()));
  }
  if(s.toLowerCase()=='gia tốc'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => GiatocPage()));
  }
  if(s.toLowerCase()=='kích cỡ'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => KichcoPage()));
  }
  if(s.toLowerCase()=='tiền tệ'){
    // Navigator.push(context,
    //     MaterialPageRoute(builder: (_) => TientePage()));
  }
  if(s.toLowerCase()=='số học'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => SohocPage()));
  }
  if(s.toLowerCase()=='góc'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => GocPage()));
  }
  if(s.toLowerCase()=='thời gian'){
    Navigator.push(context,
        MaterialPageRoute(builder: (_) => ThoigianPage()));
  }

}
