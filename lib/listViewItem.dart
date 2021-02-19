import 'package:flutter/material.dart';
import 'itemList.dart';

class ListViewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 80.0
      ),
      child: Column(
        children: <Widget>[
          ItemList("Mohamed Salah", "Experience: 02 years", "assets/img/dev1.jpg", false),
          ItemList("Grace Hartzel", "Experience: 10 years", "assets/img/dev2.jpg", true),
          ItemList("Bella Hadid", "Experience: 05 years", "assets/img/dev3.jpg", true),
          ItemList("Julia Bergshoeff", "Experience: 07 years", "assets/img/dev4.jpg", true),
          ItemList("Malaika Firth", "Experience: 09 years", "assets/img/dev5.jpg", false),
          ItemList("Mohamed Salah", "Experience: 02 years", "assets/img/dev1.jpg", false),
          ItemList("Julia Bergshoeff", "Experience: 07 years", "assets/img/dev4.jpg", true),
        ],
      ),
    );
  }
}