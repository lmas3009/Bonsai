import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
    bool isSwitched = false;
    bool isSwitched1 = false;
    bool isSwitched2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BONSAI",style: TextStyle(color: Colors.black,fontSize: 20),),
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,

      ),
      body: Container(
        child:ListView(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Container(
                  child: Text("Menu",style: TextStyle(color: Colors.black,fontSize: 40),),
                ),
               Center(
                 child: Container(
                   margin: const EdgeInsets.only(top:30),
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1,color: Colors.black)
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(margin: const EdgeInsets.only(top: 30),),
                        Text("Admin",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                        Container(margin: const EdgeInsets.only(top: 20),),
                        Text("Admin@gmail.com",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal),),
                        Container(margin: const EdgeInsets.only(top: 20),), Container(
                            height: 35,
                            width: 130,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.green[200]),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child:Center(
                                child:Text("ONLINE",style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.normal),),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
               ),
               Center(
               child:Container(
                 margin: const EdgeInsets.only(top: 20),
                 height: 50,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.grey[200],
                   borderRadius: BorderRadius.circular(20)
                 ),
                 child: Center(
                   child: Text("INFO",style: TextStyle(color: Colors.grey[500],fontSize: 20),),
                 ),
               )
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                    Container(margin: const EdgeInsets.only(top: 40),),
                    Text("email-Id",style: TextStyle(color: Colors.black),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Text("admin@gmail.com",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    Container(margin: const EdgeInsets.only(top: 5),),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(margin: const EdgeInsets.only(top: 20),),
                    Text("UserName",style: TextStyle(color: Colors.black),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Text("admin",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    Container(margin: const EdgeInsets.only(top: 5),),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(margin: const EdgeInsets.only(top: 20),),
                    Text("Phone Number",style: TextStyle(color: Colors.black),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Text("+91 8547 6924 76",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    Container(margin: const EdgeInsets.only(top: 5),),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(margin: const EdgeInsets.only(top: 20),),
                    Text("Address",style: TextStyle(color: Colors.black),),
                    Container(margin: const EdgeInsets.only(top: 10),),
                    Text("Lorem ipusm",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    Container(margin: const EdgeInsets.only(top: 5),),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                 ],
               ),
               Center(
               child:Container(
                 margin: const EdgeInsets.only(top: 20),
                 height: 50,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.grey[200],
                   borderRadius: BorderRadius.circular(20)
                 ),
                 child: Center(
                   child: Text("Notifications",style: TextStyle(color: Colors.grey[500],fontSize: 20),),
                 ),
               )
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                    Container(margin: const EdgeInsets.only(top: 40),),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    Text("In-app notification",style: TextStyle(color: Colors.grey,fontSize: 18),),
                     Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        isSwitched = value;
                        setState(() {
                            isSwitched = value;
                            print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.lightBlue,
                      activeColor: Colors.blue,
                    ),
                    ]),
                    Container(margin: const EdgeInsets.only(top: 5),),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(margin: const EdgeInsets.only(top: 40),),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    Text("Call",style: TextStyle(color: Colors.grey,fontSize: 18),),
                     Switch(
                      value: isSwitched1,
                      onChanged: (value) {
                        isSwitched1 = value;
                        setState(() {
                            isSwitched1 = value;
                            print(isSwitched1);
                        });
                      },
                      activeTrackColor: Colors.lightBlue,
                      activeColor: Colors.blue,
                    ),
                    ]),
                    Container(margin: const EdgeInsets.only(top: 5),),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(margin: const EdgeInsets.only(top: 40),),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    Text("Order Information",style: TextStyle(color: Colors.grey,fontSize: 18),),
                     Switch(
                      value: isSwitched2,
                      onChanged: (value) {
                        isSwitched2 = value;
                        setState(() {
                            isSwitched2 = value;
                            print(isSwitched2);
                        });
                      },
                      activeTrackColor: Colors.lightBlue,
                      activeColor: Colors.blue,
                    ),
                    ]),
                    Container(margin: const EdgeInsets.only(top: 5),),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                 ],
               ),
               
                   
               Center(
               child:Container(
                 margin: const EdgeInsets.only(top: 50),
                 height: 50,
                 width: 300,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(width: 1,color: Colors.blue[600])
                 ),
                 child: Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Icon(Icons.power_settings_new,color: Colors.blue),
                       Text("LOGOUT",style: TextStyle(color: Colors.blue,fontSize: 20),),
                     ],
                   )
                 ),
               )
               ),
            ],
          ),
        )
          ]
        )
      ),
    );
  }
}