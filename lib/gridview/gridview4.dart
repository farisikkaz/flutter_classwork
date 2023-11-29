import 'package:flutter/material.dart';
import 'package:flutter_classwork/home.dart';
import 'my Widget.dart';
void main (){
  runApp(MaterialApp(home: ExtendGrid1(),));
}
class ExtendGrid1 extends StatelessWidget {

var  textii = [
  "heeee",'yeeoo','jvhv','sdfgf','fgbjcgv','dxcvybudxfc','srdtfyg','dxcfgv','cgvhb','erty'
];
var icons = [
  Icon(Icons.home),
  Icon(Icons.emergency),
  Icon(Icons.camera),
  Icon(Icons.try_sms_star),
  Icon(Icons.wifi_off),
  Icon(Icons.bookmark),
  Icon(Icons.call),
  Icon(Icons.message),
  Icon(Icons.slideshow),
  Icon(Icons.payments),
  Icon(Icons.mic_off),
  Icon(Icons.local_hospital_outlined)

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extend Grid"),
      ),
      body: GridView.extent(maxCrossAxisExtent:120,crossAxisSpacing: 10,mainAxisSpacing: 20,
      children: List.generate(10, (index) =>
      Container(
        color: Colors.blue,
        child: Column(

          children: [
            Expanded(child: Text(textii[index])),
         //   Image.network("https://images.unsplash.com/photo-1695653422909-20d8cc35ca2e?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
          Center(child :icons[index]),

            // MyWidget(bgcolor: Colors.redAccent, label: Text("Faris"), onpressed: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (ExtendGrid1)=> Home()))

            ]

        ),
      )),),
    );
  }
}
