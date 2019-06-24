import 'package:flutter/material.dart';
import 'package:credit_card/ui/home/GradientAppBar.dart';

class  CreatePayement extends StatefulWidget {
  @override
 CreatePaymentState createState() => new CreatePaymentState();
}



class CreatePaymentState extends State<CreatePayement> {
  
  
  @override
  Widget build(BuildContext context) {

    
    return new Scaffold(
      appBar: new AppBar(
       backgroundColor:  new Color.fromRGBO(31 , 20, 48, 1),
       title: const Text('New Payment'),
        actions: [
          new FlatButton(
              onPressed: () {
                //TODO: Handle save
              },
              child: new Text('SAVE',
                  style: Theme
                      .of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: Colors.white))),
        ],
      ),
      body: new Text("Foo"),
      //TODO: Fill in with the image selctor, text field/money field and date selector
    );
  }
}