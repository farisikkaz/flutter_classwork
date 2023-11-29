import 'package:flutter/material.dart';
import 'package:flutter_classwork/home.dart';
void main(){
  runApp(MaterialApp(home: Stateful_Login(),));
}
class Stateful_Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _Stateful_LoginState();

  }
  class _Stateful_LoginState extends State<Stateful_Login>{
  final validkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN PAGE'),
      ),
    body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
    key: validkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Login Page',
                  style:  TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 15,),

                TextFormField(
                  validator:(email) {
                    if (email!.isEmpty || !email.contains("@gmail.com")) {
                      return "Invalid email";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                    ),
                    hintText: 'Username',
                    labelText: "Username",

                  ),

                ),
                const SizedBox(height: 15,),

                TextFormField(
                 validator: (password){
                   if(password!.isEmpty|| password.length<6){
                     return "Password must not be empty or length should be more than 6";
    }
    },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                    ),
                    hintText: "password",
                    labelText: "password"
                  )
                  ),
               const SizedBox(height: 15,),

                MaterialButton(onPressed: () {
                  final valid = validkey.currentState!.validate();
                  if (valid == true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Stateful_Login) => Home()));
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                        content: Text('Invalid email/password')));
                  }

                },
                    shape: StadiumBorder(),
                    color: Colors.green,
                  child: Text('Login!')
                ),
TextButton(onPressed: (){}, child: Text("Not a user ? Register now!"))
              ],
            ),
          ),
        )),
    );
  }

  }
