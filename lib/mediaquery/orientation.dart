import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Orientation1(),));
}
class Orientation1 extends StatelessWidget {
  var orientation,height,width;

  @override
  Widget build(BuildContext context) {
    orientation= MediaQuery.of(context).orientation;
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Media Query"),),
      body: orientation== Orientation.portrait?
      Container(
        height: height/2,
        width: width/2,
        color: Colors.black,


      ):
      Container(
        height: height/3,
        width: width/4,
        color: Colors.red,


      ),
    );
  }
}
