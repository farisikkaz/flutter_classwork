import 'package:flutter/material.dart';
import 'package:flutter_classwork/mediaquery/bigscreen.dart';
import 'package:flutter_classwork/mediaquery/mobilescreen.dart';
import 'package:flutter_classwork/splashstatefull.dart';
void main(){
  runApp(MaterialApp(home: O11(),));
}
class O11 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery
        .of(context)
        .size
        .width;

    if (devicewidth < 600) {
      return MobileScreen();
    } else {
return BigScreen();
    }
  }
}