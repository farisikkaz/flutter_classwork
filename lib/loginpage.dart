import 'package:flutter/material.dart';
import 'package:flutter_classwork/home.dart';
import 'package:flutter_classwork/signuppage.dart';
import 'package:flutter_classwork/welcomepage.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget{
  String username = "admin";
  String password = "admin123";

  final user_name = TextEditingController();
  final pass_name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (LoginPage)=> Welcome()));
        }, icon: Icon(Icons.arrow_back_ios), color: Colors.black,),
        // leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('LOGIN',
              style: GoogleFonts.satisfy(fontSize: 30 ),),
            Text("Welcome Back ! Login with you essentials",
              style: GoogleFonts.satisfy(fontSize: 15),),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: user_name,
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)
                  )
                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20.0,left: 20.0,bottom: 20.0,),
              child: TextField(
                obscureText: true,
                obscuringCharacter: ".",
                controller: pass_name,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.password),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)
                  )
                ),
              ),
            ),
            MaterialButton(
                onPressed: (){
                  if(username == user_name.text && password == pass_name.text){
                    Navigator.push(context, MaterialPageRoute(builder: (LoginPage)=> Home()));
                  }
                  user_name.text = "";
                  pass_name.text = "";

                },
            color: Colors.green,
            shape: const StadiumBorder(),
            child: const Text('Login'),
            ),
            TextButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (LoginPage) => Signup()));
                },
                child: RichText(text:TextSpan(
                  style: TextStyle(fontSize: 15,color: Colors.black),
              children: [
                TextSpan(text: 'Dont have an account ?'),
                TextSpan(text: 'Sign up !',
                    style:  TextStyle(fontWeight: FontWeight.bold),
                )
              ]
            )))
            
          ],
        ),
      ),
    );
  }
}
