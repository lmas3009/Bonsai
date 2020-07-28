import 'package:bonsai/Screens/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class Delivery extends StatelessWidget {
  const Delivery({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              child:FlareActor("assets/flare/scucess.flr", alignment:Alignment.center, fit:BoxFit.contain, animation:"Untitled"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Text("Order is placed\nScucessfully",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
          child:Container(
            margin: const EdgeInsets.only(top: 130),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Text("Continue Shopping",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
            )
          ],
        ),
      ),
    );
  }
}