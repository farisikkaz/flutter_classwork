

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main (){
  runApp(MaterialApp(home: Splash(),));
}
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     // backgroundColor:Colors.white ,
     body: Container(
       decoration: const BoxDecoration(

         /// To Set Background image for a body
       // image:DecorationImage(
       //   fit: BoxFit.cover,
       // image: NetworkImage("https://images.unsplash.com/photo-1698584109673-12d97bc70d08?auto=format&fit=crop&q=60&w=400&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNTN8fHxlbnwwfHx8fHw%3D")),

         /// to set background gradient fo the body
         gradient: LinearGradient(
             begin: Alignment.topLeft,
             end: Alignment.bottomRight,
             colors:[
           Colors.red,
           Colors.yellow,
           Colors.purple,
           Colors.deepOrangeAccent,
               Colors.black,
         ])


       ),
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             // Icon(Icons.dark_mode,
             //   size: 150,
             //   color: Colors.green,),
             Image(image: AssetImage("assets/icons/phonepe.png"),height: 50,width: 50,),

             Text('Money App',
               // style:TextStyle(
               //     fontSize: 30,
               //     color: Colors.black,
               //     fontWeight: FontWeight.bold) ,)
               style: GoogleFonts.lato(
                 fontSize: 40,
                 fontWeight: FontWeight.bold,
                 color: Colors.black,
               ),),
           ],
         ),
       ),
     ),
   );
  }
  
}