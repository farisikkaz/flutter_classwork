import 'package:flutter/material.dart';
import 'package:flutter_classwork/loginpage.dart';
import 'package:flutter_classwork/welcomepage.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     backgroundColor: Colors.white,
       leading: IconButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (Signup)=> Welcome()));
       }, icon: Icon(Icons.arrow_back_ios, color:  Colors.black,)),
       // leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
     elevation: 0,
   ),
   body: SingleChildScrollView(
     child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Sign Up",style: GoogleFonts.satisfy(fontSize: 30),),
             Text('Create an Account, its free',style: GoogleFonts.satisfy(fontSize: 15),),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: TextField(
               decoration: InputDecoration(

                 hintText: "Email",
                 labelText: "Enter your email",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(40)
                 )

               ),
             ),
           ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: 'Enter your Password',
                   hintText: "Password",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(40)
                   )
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: TextField(
                 decoration: InputDecoration(
                   labelText: "Confirm your Password",
                   hintText: "Confirm Password",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(40)
                   )
                 ),
               ),
             ),
             MaterialButton(onPressed: (){},
               color: Colors.green,
               shape:const StadiumBorder(),
               child: Text("Sign up"),

             ),
             TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (Signup)=> LoginPage()));},
                 child: RichText(text: TextSpan(
                   style: TextStyle( fontSize: 15,color: Colors.black,),
                   children: [
                     TextSpan(text: 'Already have an account?',),
                     TextSpan(text: "Login!",
                     style: TextStyle(fontWeight: FontWeight.bold))

                   ]
                 )))

           ],


         )),
   ),


  );
  }

}