import 'package:app/pages/home/home.dart';
import 'package:app/pages/images/image.dart';
import 'package:app/pages/music/music.dart';
import 'package:app/pages/tech/tech.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'utilities/navbar.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mach1(),
  ));
}

class mach1 extends StatefulWidget {
  mach1({Key key}) : super(key: key);

  @override
  _mach1State createState() => _mach1State();
}

class _mach1State extends State<mach1> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [home(), music(), tech(), image()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: Scaffold(
            body: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                navBar(),
              ],
            ),
          ),
        ));
  }
}
