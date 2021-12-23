import 'package:flutter/material.dart';

class Lienhe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liên hệ"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              child: Image(
                image: AssetImage('assets/scale.png'),
                height: 100,
                width: 150,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              child: Text(
                'Iconvertor',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              child: Text(
                'Phiên bản 1.1.1',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              alignment: Alignment.center,
              child: Text(
                'Thông tin liên hệ',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    decoration: TextDecoration.none),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              height: 20,
              width: 300,
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/email.png'),
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    'tranthuytien08062000@gmail.com',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              height: 20,
              width: 300,
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/facebook.png'),
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    'https://www.facebook.com/tientien8648',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
