import 'package:flutter/material.dart';
import 'iconMail.dart';

class ItemList extends StatelessWidget {

  String name = "Luis Yesid Peña";
  String xp = "Experience: 02 years";
  String pathImage = "assets/img/dev1.jpg";
  bool mailActive = true;

  ItemList(this.name, this.xp, this.pathImage, this.mailActive);

  @override
  Widget build(BuildContext context) {
    
    final photo = Container(
      width: 65.0,
      height: 65.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ), 
      ),
    );

    final nameItems = Container(
      margin: EdgeInsets.only(
        top: 7.0,
        left: 15.0
      ),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final experience = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 15.0
      ),
      child: Text(
        xp,
        style: TextStyle(
          fontSize: 17.0,
        ),
      ),
    );

    final description = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          nameItems,
          experience
        ],
      )
    );  

    final item = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              photo,
              description,
              IconMail(mailActive),
            ],
          ),
          Divider()
        ],
      )
    );
    

    return item;
  }
}