import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: StaggeredG1(),));
}
class StaggeredG1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child:Container(
                decoration:const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/grapes.jpg"),
                    fit: BoxFit.fill)),
              ) ),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/grapes.jpg"),
                        fit: BoxFit.fill)),
              ) ),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child:Container(
                decoration:const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/grapes.jpg"),
                        fit: BoxFit.fill)),
              ) ),
          
        ],),
      ),

    );
  }
}
