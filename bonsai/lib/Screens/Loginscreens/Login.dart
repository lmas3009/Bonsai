import 'package:bonsai/Screens/Home/home.dart';
import 'package:bonsai/Screens/Loginscreens/Register.dart';
import 'package:flutter/material.dart';


TextEditingController _controller1 = new TextEditingController();
TextEditingController _controller2 = new TextEditingController();

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               Container(
                height: 480,
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
              Container(margin: const EdgeInsets.only(top: 20),),
              Container(
                width: 250,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                controller: _controller1,
                decoration: InputDecoration(
                  hintText: "Username",
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabled: false,
                  border: InputBorder.none
                ),
                )
              ),
              Container(margin: const EdgeInsets.only(top: 20),),
              Container(
                width: 250,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                controller: _controller2,
                decoration: InputDecoration(
                  hintText: "Password",
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabled: false,
                  border: InputBorder.none
                ),
                )
              ),
              Container(margin: const EdgeInsets.only(top: 20),),
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));},
              child:Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red
                ),
                child: Center(
                  child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 20,),
                )
              ),
            ),
              ),
              Container(margin: const EdgeInsets.only(top: 20),),
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));},
                child:Container(
                  child: Text("Don't have an account? Register"),
                )
              )
            ],
          ),
      ),
    );
  }
}