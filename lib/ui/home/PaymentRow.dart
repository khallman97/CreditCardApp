import 'package:flutter/material.dart';
import 'package:credit_card/model/Payment.dart';

class PaymentRow extends StatelessWidget {
  final Payment payment;

  PaymentRow(this.payment);

  @override
  Widget build(BuildContext) {
    final paymentThumbnail = new Container(
      margin: new EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(payment.image),
        height: 92.0,
        width: 92.0,
      ),
    );

    final paymentCard = new Container(
      height: 124.0,
      margin: new EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
          color: new Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0),
            )
          ]),
    );

    final paymentCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(105.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 10.0),
          new Text(payment.amount, 
            style: headerTextStyle,
          ),
         
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 7.0),
            height: 2.0,
            width: 170.0,
            color: new Color(0xff00c6ff)
          
          ),
         
          new Row(
            children: <Widget>[
              new Container(width: 4.0),
              new Text(payment.dueDate,
                style: regularTextStyle,
              ),
            ],
          )
        ],
      ),


    );




    return new Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: new Stack(
        children: <Widget>[
          paymentCard,
          paymentThumbnail,
           paymentCardContent
        ],
      ),
    );
  }
  final baseTextStyle = const TextStyle(
      fontFamily: 'Poppins'
  );

  final headerTextStyle = const TextStyle(
      fontFamily: 'Poppins',
      color:  Colors.white,
      fontSize: 25.0,
      fontWeight: FontWeight.w600
  );

     final regularTextStyle = const TextStyle(
      fontFamily: 'Poppins',
      color: const Color(0xffb6b2df),
      fontSize: 20.0,
      fontWeight: FontWeight.w400
    );    
  final subHeaderTextStyle = const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12.0
    );

}
