import 'package:bonsai/Screens/Type/Details/display.dart';
import 'package:flutter/material.dart';

class Outdoor extends StatelessWidget {
  const Outdoor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () { /* Write listener code here */ },
              child: Icon(
                Icons.menu, color: Colors.black,size: 40, // add custom icons also
              ),
          ),
          title: Text("BONSAI  OUT-DOOR",style: TextStyle(color: Colors.black,fontSize: 20),),
        automaticallyImplyLeading: false,
        actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child:GestureDetector(
              child: Icon(
                Icons.shopping_cart, color: Colors.black,size: 30,
              ),
          ),
        ),
          Container(margin: const EdgeInsets.only(left: 10),),
        ],
        elevation: 0,
        backgroundColor: Color(0x44FFFFFF),
      ),
       body: Container(
        child: GridView.count(
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: Listofdata(context),
            ),
      )
    );
  }
}

List<Widget> Listofdata(BuildContext context){
  List<Widget> data = [];
  for(var i=1;i<=10;i++){
      data.add(
        InkWell(
          onTap: () {
            var img = "assets/images/outdoor/out_"+i.toString()+".png";
            print(img);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Display(img)));
          },
        child:Container(
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
            image: AssetImage("assets/images/outdoor/out_"+i.toString()+".png"),
            fit: BoxFit.cover
          )
          ),
        )
      ),
      );
  }
  return data;
}