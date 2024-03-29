import 'package:flutter/material.dart';
import 'package:credit_card/ui/home/PaymentRow.dart';
import 'package:credit_card/model/Payment.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        color: new Color.fromRGBO(46, 38, 56, 1),
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: new SliverFixedExtentList(
                itemExtent: 152.0,
                delegate: new SliverChildBuilderDelegate(
                  (context, index) => new PaymentRow(payments[index]),
                  childCount: payments.length,
                ),
              ),
            )
          ],
        ),
      )





    );
    
  }



}
