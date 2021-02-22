import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget {

  String titleAppBar = "Developers";

  HeaderAppBar(this.titleAppBar);

  @override
  Widget build(BuildContext context) {

    final textHeader = ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/img/banner.jpg"),
            colorFilter: ColorFilter.mode(
              Color.fromRGBO(70, 135, 190, 0.80),
              BlendMode.srcATop,
            ),
          ),
        ),
        child: Text(
          titleAppBar,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontFamily: "OpenSans",
            fontWeight: FontWeight.bold
          ),
        ),

        alignment: Alignment.center,
      )
    );

    final iconHeader = Container(
      padding: EdgeInsets.only(
        top: 30.0
      ),
      height: 100.0,
      child: Icon(
        Icons.menu,
        size: 35.0,
        color: Colors.white,
      ),
      alignment: Alignment(-0.9, 0.0),
    );

    final headerAppBar = Stack(
      children: <Widget>[
        textHeader,
        iconHeader,
      ],
    );


    return headerAppBar;
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

       var path = new Path();
      path.lineTo(0.0, size.height - 38);
      var firstStart = Offset(size.width / 6, size.height - 40);
      var firstEnd = Offset(size.width / 2 - size.width / 6, size.height - 20);
      path.quadraticBezierTo(
          firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
      var secondStart = Offset(size.width / 2, size.height - 5);
      var secondEnd = Offset(size.width / 2 + size.width / 6, size.height - 20);
      path.quadraticBezierTo(
          secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
      var thirdStart = Offset(size.width - (size.width / 6), size.height - 40);
      var thirdEnd = Offset(size.width, size.height - 38);
      path.quadraticBezierTo(
          thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy);
      path.lineTo(size.width, 0.0);
      path.close();

      return path;

    }
  
    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
      return true;
    }

  
}