import 'package:flutter/material.dart';

Widget customDropDown(List<String> list,String value,void change(val)){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10)
    ),
    child: DropdownButton<String>(

        value: value,
        onChanged: ( newValue) {
          change(newValue);
        },
        items: list
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
              value: value, child: Text(value));
        }).toList()),
  );
}