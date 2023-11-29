import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Bottomsheet1(),));
}
class Bottomsheet1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
          child: GestureDetector(
              onDoubleTap: (){
                showsheet(context);
              },
              child: Image.asset("assets/images/book.jpg"),),
        ),
      ),
    );
  }
}

void showsheet(BuildContext context) {
  showModalBottomSheet(context: context, builder:(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
        children:[
          ListTile(leading: Text("Share"),trailing: Icon(Icons.share),),
          ListTile(leading: Text("Copy"),trailing: Icon(Icons.copy),)
        ]
      // [Row(children: [Text("Share"), Icon(Icons.share)],),
      //   Row(children: [Text("Copy"), Icon(Icons.copy)],), ]
        );});
}
