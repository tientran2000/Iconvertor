import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KichcoPage extends StatefulWidget {
  @override
  State<KichcoPage> createState() => Kichco();
}

class Kichco extends State<KichcoPage> {
  @override
  Widget build(BuildContext context) {
    final tabControl = new DefaultTabController(
        length: 2,
        child: Container(
          child: new Scaffold(
            appBar: new AppBar(
              title: Text('Kích cỡ'),
              bottom: new TabBar(indicatorColor: Colors.deepPurpleAccent, tabs: [
                new Tab(
                  icon: new Icon(Icons.female),
                  text: "Nữ",
                ),
                new Tab(
                  icon: new Icon(Icons.male),
                  text: "Nam",
                ),
              ]),
            ),
            body: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: new TabBarView(

                    children: [
                    buidFeMale(), buidMale()]),
              ),
            ),
          ),
        ));
    return
      new Scaffold(
        body: tabControl,

    );
  }

  @override
  Widget builUnitName(String unitname) {
    return Container(
      height: 30.0,
      width: 70.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(5)),
      child: Text('$unitname', textAlign: TextAlign.center),
    );
  }

  @override
  Widget buidMale() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Column(
          children: [
            builUnitName('US'),
            builUnitName('30'),
            builUnitName('32'),
            builUnitName('34'),
            builUnitName('36'),
            builUnitName('38'),
            builUnitName('40'),
            builUnitName('42'),
            builUnitName('44'),
            builUnitName('46'),
            builUnitName('48'),
            builUnitName('50')
          ],
        ),
        Column(
          children: [
            builUnitName('UK'),
            builUnitName('30'),
            builUnitName('32'),
            builUnitName('34'),
            builUnitName('36'),
            builUnitName('38'),
            builUnitName('40'),
            builUnitName('42'),
            builUnitName('44'),
            builUnitName('46'),
            builUnitName('48'),
            builUnitName('50')
          ],
        ),
        Column(
          children: [
            builUnitName('FR'),
            builUnitName('40'),
            builUnitName('42'),
            builUnitName('44'),
            builUnitName('46'),
            builUnitName('48'),
            builUnitName('50'),
            builUnitName('52'),
            builUnitName('54'),
            builUnitName('56'),
            builUnitName('58'),
            builUnitName('60')
          ],
        ),
        Column(
          children: [
            builUnitName('IT'),
            builUnitName('40'),
            builUnitName('42'),
            builUnitName('44'),
            builUnitName('46'),
            builUnitName('48'),
            builUnitName('50'),
            builUnitName('52'),
            builUnitName('54'),
            builUnitName('56'),
            builUnitName('58'),
            builUnitName('60')
          ],
        ),
        Column(
          children: [
            builUnitName('S-M-L'),
            builUnitName('XXS'),
            builUnitName('XS'),
            builUnitName('S'),
            builUnitName('S'),
            builUnitName('M'),
            builUnitName('M'),
            builUnitName('L'),
            builUnitName('L'),
            builUnitName('XL'),
            builUnitName('XXL'),
            builUnitName('XXXL')
          ],
        ),
      ],
    );
  }

  Widget buidFeMale() {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Column(
            children: [
              builUnitName('US'),
              builUnitName('0'),
              builUnitName('2'),
              builUnitName('4'),
              builUnitName('6'),
              builUnitName('8'),
              builUnitName('10'),
              builUnitName('12'),
              builUnitName('14'),
              builUnitName('16'),
              builUnitName('18'),
              builUnitName('20')
            ],
          ),
          Column(
            children: [
              builUnitName('UK'),
              builUnitName('2'),
              builUnitName('4'),
              builUnitName('6'),
              builUnitName('8'),
              builUnitName('10'),
              builUnitName('12'),
              builUnitName('14'),
              builUnitName('16'),
              builUnitName('18'),
              builUnitName('20'),
              builUnitName('22')
            ],
          ),
          Column(
            children: [
              builUnitName('FR'),
              builUnitName('32'),
              builUnitName('34'),
              builUnitName('36'),
              builUnitName('38'),
              builUnitName('40'),
              builUnitName('42'),
              builUnitName('44'),
              builUnitName('46'),
              builUnitName('48'),
              builUnitName('50'),
              builUnitName('52')
            ],
          ),
          Column(
            children: [
              builUnitName('DE'),
              builUnitName('28'),
              builUnitName('30'),
              builUnitName('32'),
              builUnitName('34'),
              builUnitName('36'),
              builUnitName('38'),
              builUnitName('40'),
              builUnitName('42'),
              builUnitName('44'),
              builUnitName('46'),
              builUnitName('48'),
            ],
          ),
          Column(
            children: [
              builUnitName('S-M-L'),
              builUnitName('XS'),
              builUnitName('S'),
              builUnitName('S'),
              builUnitName('M'),
              builUnitName('M'),
              builUnitName('L'),
              builUnitName('L'),
              builUnitName('XL'),
              builUnitName('XL'),
              builUnitName('XXL'),
              builUnitName('XXXL')
            ],
          ),
        ],
      );
  }
}
