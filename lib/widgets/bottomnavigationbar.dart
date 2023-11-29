import 'package:flutter/material.dart';
import 'package:flutter_classwork/gridview/gridview2.dart';
import 'package:flutter_classwork/watsapp%20ui/listview3.dart';
import 'package:flutter_classwork/watsapp%20ui/listview_custom.dart';
void main(){
  runApp(MaterialApp(home: BottomNavbar(),debugShowCheckedModeBanner: false,));
}
class BottomNavbar extends StatefulWidget {

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int index=0;
  var screens=[ListView5(),Listview3(),Gview2()];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap:(tapindex) {
          setState(() {
            index=tapindex;
          });
        },
          type: BottomNavigationBarType.shifting,
          currentIndex: index,
          backgroundColor: Colors.red,
          items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),
        backgroundColor: Colors.blueGrey,label: "Home"),

      BottomNavigationBarItem(icon: Icon(Icons.category),
      backgroundColor: Colors.red,label: "Category"),

        BottomNavigationBarItem(icon: Icon(Icons.notification_add),
            backgroundColor: Colors.yellow,label: "Notification"),

      ]),
      body: screens[index],
    );
  }
}
