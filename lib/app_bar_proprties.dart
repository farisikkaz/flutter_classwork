import 'package:flutter/material.dart';
void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Appbarprop1(),));

}
class Appbarprop1 extends StatelessWidget {
  const Appbarprop1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.camera_alt_outlined),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text('New Group')),
              PopupMenuItem(child: Text('New Broadcast')),
              PopupMenuItem(child: Text('Linked Device')),
              PopupMenuItem(child: Text('Settings')),
            ];
          })
        ]
      ),
    );
  }
}
