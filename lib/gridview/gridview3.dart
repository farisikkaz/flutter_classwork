import 'dart:math';

import 'package:flutter/material.dart';
import 'my Widget.dart';
void main (){
  runApp(MaterialApp(home: Countgrid(),));
}

class Countgrid extends StatelessWidget {
  const Countgrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Count"),
      ),
      body: GridView.count(crossAxisCount: 4,crossAxisSpacing: 10,mainAxisSpacing: 20,
      children: List.generate(50, (index) => 
          MyWidget(bgcolor: Colors.red, label: Text("Grab"), onpressed: (){},image: Image(image: AssetImage('assets/images/book.jpg'),)
      // Container(
      //   // height: 10,width: 20,
      //   color:  Colors.primaries[Random().nextInt(Colors.primaries.length)],
      //   child: Column(
      //     children: [
      //       Image.network('https://images.unsplash.com/photo-1695653422909-20d8cc35ca2e?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      //       // Text("Grab",style: TextStyle(color: Colors.white),),
      //       MyWidget(bgcolor: Colors.red, label: Text('Grab'), onpressed: (){}),
      //     ],
      //   ),
      // )
      ),),
    )
    );
  }
}
