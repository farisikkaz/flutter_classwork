import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gview1(),));
}
class Gview1 extends StatelessWidget {
  const Gview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View One'),
      ),
      // body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
      // children: List.generate(20, (index) =>
      //     Card(
      //       child: Image.network("https://images.unsplash.com/photo-1535127022272-dbe7ee35cf33?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      //
      //     )
      // ),
      //
      //
      // ),
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          mainAxisExtent: 50 ,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20),

        children: List.generate(20, (index) => 
        Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Image.network("https://images.unsplash.com/photo-1535127022272-dbe7ee35cf33?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        )
        ),
      ),
    );
  }
}
