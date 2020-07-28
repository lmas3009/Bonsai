import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  String name = "Bonsai";
  String img = "assets/images/image_3.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                margin: const EdgeInsets.only(top: 50),
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                border: Border.all(width: 2,color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black87
                  )
                ],
                image: DecorationImage(
                  image: AssetImage("assets/images/image_3.png"),
                  fit: BoxFit.cover
                )
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40,left: 20),
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                /*borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                border: Border.all(width: 2,color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black87
                  )
                ],*/
                /*image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover
                )*/
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Rs:1200/-",style: TextStyle(color: Colors.black,fontSize: 20),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Text(name.toString(),style: TextStyle(color: Colors.black,fontSize: 20),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Text("Review",style: TextStyle(color: Colors.black,fontSize: 20),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("BUY",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ),
                  ],
                ),
              ),
                ],
              ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                margin: const EdgeInsets.only(top: 50),
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
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
                margin: const EdgeInsets.only(top: 40,left: 20),
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                /*borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                border: Border.all(width: 2,color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black87
                  )
                ],*/
                /*image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover
                )*/
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Rs:1200/-",style: TextStyle(color: Colors.black,fontSize: 20),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Text(name.toString(),style: TextStyle(color: Colors.black,fontSize: 20),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Text("Review",style: TextStyle(color: Colors.black,fontSize: 20),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("BUY",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ),
                  ],
                ),
              ),
                ],
              ), 
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                margin: const EdgeInsets.only(top: 50),
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                border: Border.all(width: 2,color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black87
                  )
                ],
                image: DecorationImage(
                  image: AssetImage("assets/images/image_16.png"),
                  fit: BoxFit.cover
                )
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40,left: 20),
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                /*borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                border: Border.all(width: 2,color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black87
                  )
                ],*/
                /*image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover
                )*/
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Rs:1200/-",style: TextStyle(color: Colors.black,fontSize: 20),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Text(name.toString(),style: TextStyle(color: Colors.black,fontSize: 20),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Text("Review",style: TextStyle(color: Colors.black,fontSize: 20),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("BUY",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ),

                  ],
                ),
              ),
                ],
              ),
              
              
            ],
          ),
        ]
        ),
      ),
    );
  }
}