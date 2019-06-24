import 'package:flutter/material.dart';
import 'package:credit_card/ui/home/GradientAppBar.dart';
import 'package:credit_card/ui/home/HomePageBody.dart';
import 'package:credit_card/newPayement/CreatePayment.dart'; 

class HomePage extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    void _openAddEntryDialog() {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return new CreatePayement();
      },
        fullscreenDialog: true
      ));
    }


    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("Payments"),
          new HomePageBody(),
          
            

          
        ],
      ),
    //Floating Action Button 
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
       _openAddEntryDialog();

        //print("Clicked");
       /* showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.00 ),
                      child: TextFormField(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.00 ),
                      child: TextFormField(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.00 ),
                      child: RaisedButton(
                        child: Text("Submit"),
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          }*/
        //);


      },
      backgroundColor: new Color.fromRGBO(190, 192, 196, 1),
      foregroundColor: new Color.fromRGBO(38, 39, 40, 1),
    ),
    );
  }
}