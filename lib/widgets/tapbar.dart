import 'package:flutter/material.dart';
import 'package:flutter_classwork/watsapp%20ui/chatscreen2.dart';
import 'package:flutter_classwork/watsapp%20ui/listview2.dart';
import 'package:flutter_classwork/watsapp%20ui/listview3.dart';
void main(){
  runApp(MaterialApp
    (debugShowCheckedModeBanner: false,
    home: Tabbar1(),));

}
class Tabbar1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,

          title: Text("WhatsApp"),

          bottom: TabBar(
              tabs: [Text("Status"),Text("Chats"),Text("Calls")]),
        ),

        body:
          TabBarView(children: [Listview3(),Wpchat(),Icon(Icons.person)])

      ),
    );
  }
}
