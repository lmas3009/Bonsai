import 'package:bonsai/Screens/Home/home.dart';
import 'package:flutter/material.dart';

class Tracking extends StatelessWidget {
  Tracking(this.img,this.name, {Key key}) : super(key: key);
  String name,img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:ListView(children: <Widget>[
        Padding(padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
               Row(
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
                  image: AssetImage(img),
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
                  ],
                ),
              ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                margin: const EdgeInsets.only(top: 20),
                height: 160,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1,color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Name",style: TextStyle(fontSize: 20),),
                          Icon(Icons.edit)
                        ],
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.only(left:20,right: 20),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Email Id",style: TextStyle(fontSize: 20),),
                        ],
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.only(left:20,right: 20),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Address",style: TextStyle(fontSize: 20),textAlign: TextAlign.left,),
                        ],
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.only(left:20,right: 20),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Phone Number",style: TextStyle(fontSize: 20),textAlign: TextAlign.left,),
                        ],
                      )
                    ),
                  ],
                ),
              )
            ],
          ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: <Widget>[
                  Container(margin: const EdgeInsets.only(left: 10),),
                  CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: Icon(Icons.assignment_turned_in,color: Colors.green,)
                  ),
                  Container(margin: const EdgeInsets.only(left: 10),),
                  Text("Order Dispatched from shop",style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: <Widget>[
                  Container(margin: const EdgeInsets.only(left: 10),),
                  CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: Icon(Icons.assignment_turned_in,color: Colors.green,)
                  ),
                  Container(margin: const EdgeInsets.only(left: 10),),
                  Text("Order is shiped",style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: <Widget>[
                  Container(margin: const EdgeInsets.only(left: 10),),
                  CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: Icon(Icons.assignment_late,color: Colors.grey,)
                  ),
                  Container(margin: const EdgeInsets.only(left: 10),),
                  Text("Order is Delivered",style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ),
             InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
            child:Container(
              margin: const EdgeInsets.only(top: 50),
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
         ]
        ),
      ),
      ]
      )
      )
    );
  }
}