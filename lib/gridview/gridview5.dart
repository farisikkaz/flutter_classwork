import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Customgrid1(),));
}
class Customgrid1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      //     childrenDelegate: SliverChildBuilderDelegate((context, index) =>
      //         Container(
      //           child: Image.asset('assets/images/grapes.jpg'),
      //         )
      //     )),
    
    body: GridView.custom(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200), childrenDelegate:
    SliverChildListDelegate(

      [Text("faris"),
    Image.asset("assets/images/grapes.jpg"),
        
    ])),
    
    
    );
  }
}
