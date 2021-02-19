import 'package:flutter/material.dart';

class IconMail extends StatelessWidget {

  bool active = true;

  IconMail(this.active);

  Widget getIcon(bool active){

    Color colorIcon = Colors.white;
    Color colorContent = Colors.red;

    if(active == false){
      colorIcon = Colors.grey[800];
      colorContent = Colors.grey[350];
    }

    final icon = Container(
      margin: EdgeInsets.only(
        top: 15.0,
        left: 80.0
      ),

      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.mail,
        color: colorIcon,
        size: 30.0,
      ),
    );

    final contentIcon = Container(
      margin: EdgeInsets.only(
        top: 7.0,
        left: 70.0
      ),

      width: 50.0,
      height: 50.0,

       decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorContent
      ),

    );

    return Stack(
      children: <Widget>[
        contentIcon,
        icon,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return getIcon(active);
  }
}