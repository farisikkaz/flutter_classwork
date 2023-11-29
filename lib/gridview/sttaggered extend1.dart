import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: ExtendStaggered(),));
}
class ExtendStaggered extends StatelessWidget {
  const ExtendStaggered({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.extent(maxCrossAxisExtent: 150,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: [
        StaggeredGridTile.extent(crossAxisCellCount: 2, mainAxisExtent: 120,
            child: Container(
              decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage("assets/images/grapes.jpg"),
                fit: BoxFit.fill)

              ),
            )),
        StaggeredGridTile.extent(crossAxisCellCount: 2, mainAxisExtent: 120,
            child: Container(
              decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage("assets/images/kkke.jpg"),
                      fit: BoxFit.fill)

              ),
            )),
        StaggeredGridTile.extent(crossAxisCellCount: 3, mainAxisExtent: 120,
            child: Container(
              decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage("assets/images/book.jpg"),
                      fit: BoxFit.fill)

              ),
            )),



      ],),
    );
  }
}
