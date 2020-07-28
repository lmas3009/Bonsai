import 'package:bonsai/Screens/Type/Indoor/order_details/tracking.dart';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  Order({Key key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Tracking("assets/images/image_4.png","Bonsai")));
              },
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                margin: const EdgeInsets.only(top: 50),
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                color: Colors.black,
                border: Border.all(width: 2,color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black87
                  )
                ],
                image: DecorationImage(
                  image: AssetImage("assets/images/image_4.png"),
                  fit: BoxFit.cover
                )
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 50),
                  height: 180,
                  width: 150,
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                  color: Colors.white,
                  border: Border.all(width: 2,color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.black87
                    )
                  ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Rs:1200/-",style: TextStyle(color: Colors.black,fontSize: 20),),
                      Container(margin: const EdgeInsets.only(top: 10),),
                      Text("Bonsai",style: TextStyle(color: Colors.black,fontSize: 20),),
                      Container(margin: const EdgeInsets.only(top: 10),),
                      Text("Packed",style: TextStyle(color: Colors.black,fontSize: 20),),
                    ],
                  ),
                ),
              ],
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                margin: const EdgeInsets.only(top: 30),
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                color: Colors.black,
                border: Border.all(width: 2,color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black87
                  )
                ],
                image: DecorationImage(
                  image: AssetImage("assets/images/image_7.png"),
                  fit: BoxFit.cover
                )
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 180,
                  width: 150,
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                  color: Colors.white,
                  border: Border.all(width: 2,color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.black87
                    )
                  ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Rs:1200/-",style: TextStyle(color: Colors.black,fontSize: 20),),
                      Container(margin: const EdgeInsets.only(top: 10),),
                      Text("Bonsai",style: TextStyle(color: Colors.black,fontSize: 20),),
                      Container(margin: const EdgeInsets.only(top: 10),),
                      Text("Not-Packed",style: TextStyle(color: Colors.black,fontSize: 20),),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}