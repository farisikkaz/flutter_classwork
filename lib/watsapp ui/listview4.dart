import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: Listview4(),));
}
class Listview4 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" List View SEperated"),
      ),
      body: ListView.separated(
          itemBuilder: (context,index) {
           return ListTile(
              leading: Icon(Icons.person),
              title: Text("My contacts"),
            );
          },
          separatorBuilder: (context,index){
              if (index % 3 ==0  ) {
                return Divider();}else {
                return Card();
              }
    },
          itemCount: 10),
    );
  }
}
