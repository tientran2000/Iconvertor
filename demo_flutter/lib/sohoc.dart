import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// String bin = '';
// String dec = '';
// String oct = '';
// String hex = '';
// int t = 6;
class SohocPage extends StatefulWidget {
  @override
  State<SohocPage> createState() => Sohoc();
}

class Sohoc extends State<SohocPage> {
  String bin = '';
  String dec = '';
  String oct = '';
  String hex = '';
  int t = 6;
  TextEditingController txthex = TextEditingController();
  TextEditingController txtbin = TextEditingController();
  TextEditingController txtoct = TextEditingController();
  TextEditingController txtdec = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    // txtbin.addListener(convertBin);
    // txthex.addListener(convertHex);
    //  txtoct.addListener(convertOct);
    //txtdec.addListener(convertDec);
     //txtbin.addListener(() => setState(() {}));
    // txthex.addListener(convertHex);
    // txtoct.addListener(convertOct);
    // txtdec.addListener(convertDec);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    txtbin.dispose();
    txthex.dispose();
    txtoct.dispose();
    txtdec.dispose();
    super.dispose();
  }


  void convert(TextEditingController c,int r) {
    if (c.text == '') {
      return;
    } else {
      t = int.parse(c.text, radix: r);
      bin = t.toRadixString(2);
      hex = t.toRadixString(16);
      oct = t.toRadixString(8);
      dec = t.toRadixString(10);
      txtbin.value = c.value.copyWith(
          text: bin,
          selection: TextSelection.collapsed(
            offset: c.value.selection.baseOffset + bin.length,
          ));
      txtdec.value = c.value.copyWith(
          text: dec,
          selection: TextSelection.collapsed(
            offset: c.value.selection.baseOffset + dec.length,
          ));
      txtoct.value = c.value.copyWith(
          text: oct,
          selection: TextSelection.collapsed(
            offset: c.value.selection.baseOffset + oct.length,
          ));
      txthex.value = c.value.copyWith(
          text: hex,
          selection: TextSelection.collapsed(
            offset: c.value.selection.baseOffset + hex.length,
          ));
    }
    // print('hex text field: ${txthex.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Số học"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Image(
                  height: 80.0,
                  width: 80.0,
                  image: AssetImage('assets/numbers.png'),
                ),
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                Text('BIN',style: TextStyle(
                  fontSize: 20,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold
                ),),
                input(txtbin,2,formatterBin),
              ],),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Text('OCT',style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold
                  ),),
                  input(txtoct,8,formatterOct),
                ],),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Text('DEC',style: TextStyle(
                      fontSize: 20,
                      color: Colors.amberAccent,
                      fontWeight: FontWeight.bold
                  ),),
                  input(txtdec,10,formatterDec),
                ],),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Text('HEX',style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold
                  ),),
                  input(txthex,16,formatterHex),
                ],),

            ],
          ),
        ));
  }
static final TextInputFormatter formatterBin=FilteringTextInputFormatter.allow(RegExp(r'[0-1]'));
  static final TextInputFormatter formatterOct=FilteringTextInputFormatter.allow(RegExp(r'[0-7]'));
  static final TextInputFormatter formatterHex=FilteringTextInputFormatter.allow(RegExp(r'[a-fA-F0-9]'));
  static final TextInputFormatter formatterDec=FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));

  Widget input(TextEditingController ctrl,int r,TextInputFormatter formatter) {

    return Container(
      width: 300.0,
      height: 40.0,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        controller: ctrl,
       // keyboardType: TextInputType.number,
        //inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter(RegExp("[A-Z]"))],
        inputFormatters: [formatter],
        maxLines: 1,
        onChanged: (text){
          if(text==''){
            txtbin.text='';
            txthex.text='';txtdec.text='';txtoct.text='';
          }
          convert(ctrl,r);
          print(ctrl.text);
        },

        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}
