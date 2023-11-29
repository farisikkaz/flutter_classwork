import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Drawer1(),
  ));
}
class Drawer1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Drwer"),
    backgroundColor: Colors.green,),
      drawer: Drawer(
        backgroundColor: Colors.lightBlueAccent,
        
        child: ListView(
          
         children: const [

           UserAccountsDrawerHeader(
           decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/kkke.jpg"),fit: BoxFit.fill)),
        currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/book.jpg"),),
        accountName: Text("FAris"),
          accountEmail: Text("farisikz@gmail.com"),
         otherAccountsPictures: [
           CircleAvatar(
             backgroundImage: AssetImage("assets/images/grapes.jpg"),
           ),
           CircleAvatar(
             backgroundImage: AssetImage("assets/images/grapes.jpg"),
           )
         ],),
           ListTile(
  title: Text("Home"),
  trailing: Icon(Icons.home),
),
           ListTile(
             title: Text("Settings"),
             trailing: Icon(Icons.settings),
             
           ),
           ListTile(
             title: Text("Privacy"),
             trailing: Icon(Icons.privacy_tip_outlined),
           ),


           



        ]

      ),
    )
    );
  }
}
///theme: ThemeData(primarySwatch: Colors.green), Default color kodkkan