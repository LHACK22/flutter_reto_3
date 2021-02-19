import 'package:flutter/material.dart';
import 'headerAppBar.dart';
import 'listViewItem.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        // body: Column(
        //   children: <Widget>[
        //     HeaderAppBar("Developers"),
        //     ListViewItem(),
        //   ],
        // ),
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListViewItem(),
              ],
            ),
            HeaderAppBar("Developers"),
          ],
        )
      ),
    );
  }
}