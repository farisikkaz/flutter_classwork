import 'package:flutter/material.dart';
import 'package:flutter_classwork/home.dart';

void main(){
  runApp(MaterialApp(home: Stateful_Signup(),));
}
class Stateful_Signup extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _Stateful_SignupState();

}
class _Stateful_SignupState extends State<Stateful_Signup>{
  final validkey = GlobalKey<FormState>();
  final namecntrl = TextEditingController();
  final passcntrl = TextEditingController();
  String? pwd;
bool? showpass = true;
bool? cshowpwd = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: validkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('SignUp Page',
                    style:  TextStyle(fontSize: 30),
                  ),
                  const SizedBox(height: 15,),

                  TextFormField(


    controller: namecntrl,
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
                    obscureText: true,obscuringCharacter: "*",
    controller: passcntrl,
                      validator: (password){
                          pwd = password;
                        if(password!.isEmpty|| password.length<6){
                          return "Password must not be empty or length should be more than 6";
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            if(showpass == true){
                              showpass = false;
                              }else {
                              showpass = true;
                            }
                          });
                        }, icon: Icon(showpass == true? Icons.visibility_off_sharp : Icons.visibility)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          hintText: "Password",
                          labelText: "Password"
                      )
                  ),
                  const SizedBox(height: 15,),

                  TextFormField(obscureText: true,obscuringCharacter: "*",
                    validator: (confirmpassword){
    if(confirmpassword!.isEmpty|| pwd != confirmpassword){
    return"Password must be same";
    }
    },
    decoration: InputDecoration(
      suffixIcon: IconButton(onPressed: (){
        setState(() {
          if(cshowpwd == true){
            cshowpwd = false;
          } else{cshowpwd = true;}
        });
      }, icon: Icon(cshowpwd == true? Icons.visibility_off_sharp
          : Icons.visibility)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40)
    ),
    hintText: "Confirm password",
    labelText: "Confirm password",

    ),
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
                      child: Text('Signup!')
                      ),
                      TextButton(onPressed: (){}, child: Text(" I am a user ? Login now!"))
                    
                ],
              ),
            ),
          )),
    );
  }

}