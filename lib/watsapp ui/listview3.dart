import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: Listview3(),));
}
class Listview3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view Builder"),
      ),
      body: ListView.builder(
          itemBuilder: (context,index) =>
              Card(
                child: Center(
                  child: Text("Hello", style: TextStyle(fontSize: 23),),
                ),
              )
          // {return Card()} or

      ),

    );
  }
}
