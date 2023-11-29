import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main(){
  runApp(MaterialApp(home: Clippers1(),));
}
class Clippers1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clippers"),
      ),
      body: ListView(
        children: [
          ClipPath(
            clipper: WaveClipperOne(),
            child: Image.asset("assets/images/book.jpg"),
          ),
          ClipRect(
            child: Align(child: Image.asset("assets/images/book.jpg"),widthFactor: 0.4,heightFactor: 0.4,),
          ),
          ClipRRect(
            
            borderRadius: BorderRadius.circular(100),
            child: Image.asset("assets/images/book.jpg"),
          ),
          ClipPath(
            clipper: TriangleClipper(),
            child: Image.asset("assets/images/book.jpg"),
            // child: Container(
            //   height: 200,
            //   color: Colors.red,
            ),
          
        ],
      ),
    );
  }
}
