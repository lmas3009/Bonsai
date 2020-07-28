import 'package:bonsai/Screens/Type/Indoor/indoor.dart';
import 'package:bonsai/Screens/Type/Indoor/nav.dart';
import 'package:bonsai/Screens/Type/Outdoor/Nav.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(margin: const EdgeInsets.only(top: 10)),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Nav()));},
            child:Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/image_2.png"),
                  fit: BoxFit.contain
                ),
                border: Border.all(width: 2,color: Colors.black)
              ),
              child: Center(
                child: Container(
                  width: 135,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Colors.black
                      )
                    ]
                  ),
                  child: Text("IN-DOOR",style: TextStyle(color: Colors.white,fontSize: 30),),
                )
              ),
            ),
            ),
            Divider(
              color: Colors.white,
              height: 2,
            ),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Navout()));},
            child:Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/outdoor/out_10.png"),
                  fit: BoxFit.fill
                ),
                border: Border.all(width: 2,color: Colors.black)
              ),
              child: Center(
                child: Container(
                  width: 175,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Colors.black
                      )
                    ]
                  ),
                  child: Text("OUT-DOOR",style: TextStyle(color: Colors.white,fontSize: 30),),
                )
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}