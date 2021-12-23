import 'package:flutter/material.dart';
@override
void dispose() {
  // Clean up the controller when the widget is removed from the widget tree.
  // This also removes the _printLatestValue listener.

  ctrl.dispose();
}
var ctrl=TextEditingController();
Widget CustomRow(List<String> list,String s_c,void onchangeText(val),void changeDropdown(item)){

  return  Row(
    mainAxisAlignment: MainAxisAlignment.center,

    children: [
        Container(
          width: 180,
          height: 40.0,
          padding:
          const EdgeInsets.all(7),
          margin:
          const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(15)),
          child: TextField(
            keyboardType: TextInputType.number,
            maxLines: 1,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            onChanged: (text) {

              onchangeText(text);
            },
          ),
        ),
        Container(
          height: 40.0,
          margin:
          const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          padding:
          const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(15)),
          child: DropdownButton<String>(
              hint: Text("mN"),
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 36,
              underline: SizedBox(),
              style:
              const TextStyle(color: Colors.black, fontSize: 20),
              value: s_c,
              onChanged: ( newValue) {
                changeDropdown(newValue);
              },
              items: list
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList()),
        ),
      ],

  );
}