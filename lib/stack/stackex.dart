import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Stack1(),));
}
class Stack1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body:
    Center(
      child: Stack(
            children: [
              // Container(
              //   height: 500,
              //   width: 500,
              //   color: Colors.red,
              // ),
              // Container(
              //   height: 300,
              //   width: 300,
              //   color: Colors.green,
              // ),
              // Positioned(
              //   left: 100,
              //   right: 100
              //   ,top: 100,
              //   bottom: 100,
              //   child:
        Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/book.jpg")),borderRadius: BorderRadius.circular(200)),

                ),


              Positioned

                (
                left: 100,
                right: 100,
top: 100,
                bottom: 100,
                child: Text("Books",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.red),),)
            ],
          ),
    ),
      
    );
  }
}
