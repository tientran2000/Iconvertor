import 'package:demo_flutter/api.dart';
import 'package:demo_flutter/drop_down.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TientePage extends StatefulWidget {
  @override
  State<TientePage> createState() => Tiente();
}


class Tiente extends State<TientePage> {
  final ctrl = TextEditingController();

  List<String> currencies=[];
   String from='USD';
   String to='USD';
  double rate=0;
  String result="";
  ApiClient client=ApiClient();
  // Future<List<String>> getList()  async{
  //   return  client.getCurrencies();
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    (() async{
      List<String> list= await client.getCurrencies() ;
      setState(() {
        currencies=list;
        print(currencies);
      });
    })();
    ctrl.addListener(() => setState(() {}));


  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        title: Text("Tiền tệ"),
    ),
    body:
      SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column( mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
              child: Text('Chuyển đổi tiền tệ',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 36,
                fontWeight: FontWeight.bold
              )),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    controller: ctrl,
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Nhập giá trị',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,

                      )
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        customDropDown(currencies, from, (val){
                          setState(() {
                            from=val;
                          });
                        }),
                      FloatingActionButton(
                        onPressed: (){
                          String temp=from;
                          setState(() {
                            from=to;
                            to=temp;
                          });
                        },
                        child: Icon(Icons.swap_horiz),
                        elevation: 0.0,
                        backgroundColor: Colors.green,
                      ),
                      customDropDown(currencies, to, (val){
                        setState(() {
                          to=val;
                        });
                      })
                    ],
                  ),
                  SizedBox(height: 20,),
                  RaisedButton(onPressed: ()async{
                    if(from==to){
                      rate=1;
                    }
                    else{
                      rate=await client.getRate(from, to);

                    }
                    setState(() {
                      result=(rate*double.parse(ctrl.text)).toStringAsFixed(3);
                    });
                    print(result);

                  },
                  child: Text('Chuyển'),),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text('Kết quả',
                            style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                        Text(result,
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    
    );
  }
}