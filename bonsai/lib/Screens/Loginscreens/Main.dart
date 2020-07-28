import 'package:bonsai/Screens/Loginscreens/Login.dart';
import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 550,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("BONSAI",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                    Container(margin: const EdgeInsets.only(top: 30),),
                    Text("A online store shop",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.normal),),
                ],
                )
              ),
            ),
            Container(margin: const EdgeInsets.only(top: 50),),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                      },
                    child:Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 11
                          )
                        ]
                      ),
                      child: Center(
                        child: Text("LOGIN",style: TextStyle(color: Colors.black),),
                      ),
                    )
                    ),
                    InkWell(
                      onTap: (){},
                    child:Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 11
                          )
                        ]
                      ),
                      child: Center(
                        child: Text("REGISTER",style: TextStyle(color: Colors.black),),
                      ),
                    )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}