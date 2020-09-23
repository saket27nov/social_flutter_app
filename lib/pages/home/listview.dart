import 'package:app/pages/home/utils/alert.dart';
import 'package:app/pages/images/image.dart';
import 'package:app/pages/music/music.dart';
import 'package:app/pages/tech/tech.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class listview extends StatelessWidget {
  const listview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/music': (ctx) => music(),
          '/tech': (ctx) => tech(),
          '/image': (ctx) => image(),
        },
        home: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'HOME',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: Text('Login'),
                onTap: () {
                  launch("https://www.instagram.com/");
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  showAlertDialog(context);
                },
              ),
              ListTile(
                title: Text('Tech'),
                onTap: () {
                  Navigator.pushNamed(context, '/tech');
                },
              )
            ],
          ),
        ));
  }
}
