import 'package:flutter/material.dart';
import 'package:flutter_classwork/passing_data_btwn_screens/dummydata.dart';

class Details1 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final idnew=ModalRoute.of(context)?.settings.arguments;
    final prodct=products.firstWhere((e) => e["id"]==idnew);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
             Image.asset(prodct["image"]),
            Text(prodct["name"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
            Text("${prodct["price"]}")
          ],
        ),
      ),
    );
  }
}
