import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: Gview2(),));
}
class Gview2 extends StatelessWidget {
  const Gview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Grid View 2"),
      ),
      // body: GridView.builder(
      //     itemCount: 100,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10,crossAxisSpacing: 20,mainAxisSpacing: 20), itemBuilder: (context,index)=>
      //     Container(
      //       color: Colors.greenAccent,
      //   child: Center(child: Text('user$index',textAlign: TextAlign.center,))
      //   )
      // ),

      body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120,crossAxisSpacing: 10,mainAxisSpacing: 10), itemBuilder: (context,intex)=>
          Container(
            color: Colors.black,
            child:  Column(
              children: [
                Image.network("https://images.unsplash.com/photo-1535127022272-dbe7ee35cf33?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),

                Text('hello$intex',style: TextStyle(color: Colors.white),),
              ],
            )
          )
      ),
    );
  }
}
