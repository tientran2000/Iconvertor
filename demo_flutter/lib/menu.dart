import 'package:demo_flutter/Menu/lienhe.dart';
import 'package:demo_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Image(
              height: 100.0,
              width: 100.0,
              fit: BoxFit.cover,
              image: AssetImage('assets/scale.png'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Trang chủ'),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => MyHomePage(title: 'Trang chủ')));
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Chia sẻ'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Liên hệ'),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Lienhe()));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Thoát'),
            onTap: (){
              showDialog(
                  context: context,
                  builder: (context) {
                return AlertDialog(
                  title: Text('Thoát'
                  ),
                  content: Text(
                   'Bạn có muốn thoát ứng dụng',
                    style:
                    TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  actions: [
                    OutlineButton(
                      onPressed: (){SystemNavigator.pop();},
                      child: Text('Thoát'),
                    )
                  ],
                );
            },
          );},
          )
        ],
      ),
    );
  }
}
