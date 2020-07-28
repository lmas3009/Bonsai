import 'package:bonsai/Screens/delivery.dart';
import 'package:flutter/material.dart';

class Buy extends StatelessWidget {
  Buy(this.img,this.name, this.amount, {Key key}) : super(key: key);
  String img;
  String name;
  int amount;
@override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Container(
        child: Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset("assets/images/s1.PNG",
            fit: BoxFit.fill,
            height: double.infinity,
          ),
        ),
        Row(
          children: <Widget>[
            Container(
          margin: const EdgeInsets.only(top: 80,left: 20),
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
              Text("Rs:"+amount.toString()+"/-",style: TextStyle(color: Colors.black,fontSize: 20),),
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
          margin: const EdgeInsets.only(top: 150,left: 25),
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
        ),
        Container(
          margin: const EdgeInsets.only(top: 10,left: 25),
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
                    Text("Price",style: TextStyle(fontSize: 20),),
                    Text("Rs:"+amount.toString()+"0")
                  ],
                )
              ),
              Container(
                padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Delivery Chargers",style: TextStyle(fontSize: 20),),
                    Text("Rs:150")
                  ],
                )
              ),
              Container(
                padding: const EdgeInsets.only(left:20,right: 20,top: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Total",style: TextStyle(fontSize: 20),),
                    Text("Rs:1350")
                  ],
                )
              ),
            ],
          ),
        ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 550),
          padding: const EdgeInsets.all(20),
        child:Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Delivery()));
              },
          child:Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Text("BUY",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
            )
        ],),),
        
        )
      ],
    ),
      ),
    );
  }
}