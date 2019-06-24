import 'package:flutter/material.dart';

class CreatePaymentAppBar extends StatelessWidget {
  
  
  final String title;
  final double barHeight = 90.0;


  CreatePaymentAppBar(this.title);

  @override
  Widget build(BuildContext context) {

  final double statusBarHeight = MediaQuery
      .of(context)
      .padding
      .top;  


    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: barHeight,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            const Color(0xFF3366FF),
            const Color(0xFF00CCFF),
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp
        
        ),
      ),
      child: new Center(
        child: new Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 25.0
          )
        ),
      ),
    );
  }
}