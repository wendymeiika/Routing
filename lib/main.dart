import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Belajar Flutter",
    home: NavigationDrawer(),
  ));
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: <Color>[
                Colors.blue
              ])),
            ),
          ),
          body: Container(
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              image: DecorationImage(image: AssetImage('asset/image/bc.jpeg'), fit: BoxFit.cover),
            ),
          ),
          drawer: DrawerWidget(),
        ));
  }
}
