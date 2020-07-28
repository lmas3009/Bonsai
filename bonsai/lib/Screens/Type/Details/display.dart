import 'package:bonsai/Screens/Type/Details/buy.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  Display(this.img, {Key key}) : super(key: key);
  String img;

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
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            margin: const EdgeInsets.only(top: 50,right: 50),
            child: Text("Rs: 1200",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
         ],
       ),
        Container(
          margin: const EdgeInsets.only(top: 320),
          child: Padding(padding: const EdgeInsets.only(left:25,right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Name of Tree",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Row(
                  children: <Widget>[
                    Icon(Icons.favorite),
                    Text(" Review",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 380),
          child: Padding(padding: const EdgeInsets.only(left:25,right: 25),
            child:Container(
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",style: TextStyle(color: Colors.black,fontSize: 15),textAlign: TextAlign.left,),
            )
          ),
        ),
        Center(
        child:Container(
          margin: const EdgeInsets.only(top: 430),
          child: Padding(padding: const EdgeInsets.only(left:25,right: 25),
            child:Container(
              child: Text("Estimated Delivery 1 Week.",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
            )
          ),
        ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 550),
          padding: const EdgeInsets.all(20),
        child:Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: (){
              print(img);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy(img,"Bonsai",120)));},
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
        ),
            InkWell(
          child:Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          )
        )
        ],),))
      ],
    ),
      ),
    );
  }
}