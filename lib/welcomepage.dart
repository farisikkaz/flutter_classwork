import 'package:flutter/material.dart';
import 'package:flutter_classwork/loginpage.dart';
import 'package:flutter_classwork/signuppage.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
elevation: 0,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Text(" Hello There !" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Text("Automatic identification! Verifyy your identity",style: TextStyle(fontSize: 15),),
              Image(image: NetworkImage("https://media.istockphoto.com/id/1482199015/photo/happy-puppy-welsh-corgi-14-weeks-old-dog-winking-panting-and-sitting-isolated-on-white.webp?b=1&s=170667a&w=0&k=20&c=dmUBihopR40dgT7ccYZPidRl2mEwhjva2oHThDusNbo=",scale:2 )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton(onPressed: (){

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (Welcome)=> Signup()));
                },
                child: Text("Signup",style: TextStyle(fontSize: 20),),
                  color: Colors.green,
                  shape: StadiumBorder()
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (Welcome)=> LoginPage()));
                },
                color: Colors.green,
                shape: StadiumBorder(),
                child: Text("Login",style: TextStyle(fontSize: 20),),),
              )
            ],
            
          )),
    );
  }
  
}