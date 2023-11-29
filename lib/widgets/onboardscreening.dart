import 'package:flutter_classwork/loginpage.dart';
import 'package:flutter_classwork/splashstatefull.dart';
import 'package:flutter/material.dart';
import 'package:flutter_classwork/widgets/expansiontileex.dart';
import 'package:introduction_screen/introduction_screen.dart';
void main(){
  runApp(MaterialApp(home: Onboardex(),));
}
class Onboardex extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          
            image: Align(alignment: Alignment.topCenter,child: Image.asset("assets/images/grapes.jpg")),
          title: "Page1",
          body: "qwertyuiop"
        ),PageViewModel(
            image: Align(alignment: Alignment.topCenter,child: Image.asset("assets/images/grapes.jpg")),
          title: "Page2",
          body: "asdfghjkl"
        ),PageViewModel(
            image: Align(alignment: Alignment.topCenter,child: Image.asset("assets/images/grapes.jpg")),
          title: 'Page3',
          body: "zxcvbnmASDFGHJK"
        ),
        



      ],
      onDone: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Expansiontile1())),
      onSkip: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Spalsh2())),
      skip: Text("Skip"),
      showSkipButton: true,
      next: Text("Next"),
      done: Text("Continue"),
      dotsDecorator: DotsDecorator(
        size: Size(20, 20),
        activeSize: Size(40, 20),
        color: Colors.black,
        activeColor: Colors.red,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        )
      ),
    );

  }
}
