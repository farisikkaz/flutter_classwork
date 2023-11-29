import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_classwork/gridview/gridview2.dart';
import 'package:flutter_classwork/watsapp%20ui/listview3.dart';
import 'package:flutter_classwork/watsapp%20ui/listview_custom.dart';
void main(){
  runApp(MaterialApp(home: ConvexBar1(),));
}
class ConvexBar1 extends StatefulWidget {


  @override
  State<ConvexBar1> createState() => _ConvexBar1State();
}

class _ConvexBar1State extends State<ConvexBar1> {
  int index = 0;
  var scrns =[ListView5(),Listview3(),Gview2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConvexBotoomBar"),

      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.yellow,
        style: TabStyle.reactCircle,
         onTap: (ontapp){
          setState(() {
             index= ontapp;
           });

        },

          items: [
        TabItem(icon:Icon(Icons.home),title:"Home"),
        TabItem(icon: Icon(Icons.notification_add),title: "Notification",),
        TabItem(icon: Icon(Icons.settings),title: "Settings")

      ]),
      body: scrns[index],
    );
  }
}
