import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_classwork/passing_data_btwn_screens/details.dart';
import 'package:flutter_classwork/passing_data_btwn_screens/dummydata.dart';
import 'package:flutter_classwork/watsapp%20ui/listview3.dart';

void main(){
  runApp(MaterialApp(home: Plist1(),
  debugShowCheckedModeBanner: false,
  routes:{
    "details":(context)=> Details1(),
    //"cart":(context)=>Listview3()
  } ,
   // theme: ThemeData.dark(),
  ));
}
class Plist1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Productlist"),),
      body: ListView(
        // e = single map we created un dummy data///
        children: products.map((e) => ListTile(leading: Text(e["name"]),trailing: CircleAvatar(backgroundImage: AssetImage(e['image']),),
              onTap: () =>     Navigator.pushNamed(context, "details",arguments: e["id"]),)).toList(),
      ),
    );
  }

  // void gotodetails(BuildContext context, id) {
  //   Navigator.pushNamed(context, "details",arguments: id);}

  }

