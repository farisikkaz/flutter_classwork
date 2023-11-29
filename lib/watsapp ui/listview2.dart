import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Wpchat(),));
}
class Wpchat extends StatelessWidget {

var name = ['amal','faris','rahul','vishnu','pranav','jinto','sree','fami','safeeda','raseena'];
var msg = [ 'hiii','helloo','kyabhai','ooolaay','hola','sii','teamo','loveyaaa','see ya','lol'];
// var tym = [
//   12.08,15.09,21.22,12.12,12.43,1.23,1.22,11.01,10.10,1.05
//];
  var datetym =['Today ', '18/08/23','Yestaurday','20/08/03','Today','Today','Monday',"Monday",'Sunday','Saturday'];
  var images = [
    "https://images.unsplash.com/photo-1699378999301-8c88a6a237d9?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1596215143922-eedeaba0d91c?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1578611097442-e2e8a1e98c6a?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1699378999301-8c88a6a237d9?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1596215143922-eedeaba0d91c?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1578611097442-e2e8a1e98c6a?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1699378999301-8c88a6a237d9?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
];
  var icons = [
    Icon(Icons.done_all, color: Colors.blue,),
    Icon(Icons.done_all,color: Colors.blue,),
    Icon(Icons.access_time,),
    Icon(Icons.done,),
    Icon(Icons.done_all,color: Colors.blue,),
    Icon(Icons.done,),
    Icon(Icons.done_all,color: Colors.blue,),
    Icon(Icons.access_time,),
    Icon(Icons.done, ),
    Icon( Icons.done_all,color: Colors.blue,)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // appBar: AppBar(
    // title: Text("Chats"),
    // ),
    body: ListView(
    children: List.generate(10, (index) => ListTile(
     leading: CircleAvatar(
       backgroundImage: NetworkImage(images[index]),

     // backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],


),
     title: Text(name[index]),
subtitle: Row(
children: [
  icons[index],
  Text(msg[index])
],
),
      trailing: Text(datetym[index]),

),
    ),
),
    );
  }
}
