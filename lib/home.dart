import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main()
{runApp(MaterialApp(home: Home(),));
}
class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contacts'),
      ),
      body: ListView(
        children: [
          ListTile(title: Text("Faris"),
          subtitle: Text('9072361282'),
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            child: Icon(Icons.person),
          ),
            trailing: Icon(Icons.phone),
          ),


          ListTile(title: Text("RAhul"),
            subtitle: Text("23456788"),
            leading: CircleAvatar(
              backgroundImage:
    NetworkImage("https://images.unsplash.com/photo-1552058544-f2b08422138a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cGVyc29ufGVufDB8fDB8fHww"),
            ),
            trailing: Icon(Icons.phone),
          ),

          ListTile(title: Text("Safeeda"),
            subtitle: Text('9847183129'),
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.person),
            ),
            trailing: Icon(Icons.phone),
          ),

          ListTile(title: Text("Vishnu"),
            subtitle: Text("98765432"),
            leading: CircleAvatar(
              backgroundImage:
              NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            trailing: Icon(Icons.phone),
          ),

          ListTile(title: Text("Famiya"),
            subtitle: Text('8157044266'),
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.person),
            ),
            trailing: Icon(Icons.phone),
          ),




          ListTile(title: Text("Vishnu"),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                Text("hi R u there?")
              ],
            ),
            leading: CircleAvatar(
              backgroundImage:
              NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            trailing: Column(
              children: [
                Text("10 21 PM"),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.lightGreenAccent,
                  child: Text("2"),
                  
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaIcon(FontAwesomeIcons.facebook),
              FaIcon(FontAwesomeIcons.twitter),
              

            ],
          )
        ],
      ),
    );
  }
}




// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// FaIcon(FontAwesomeIcons.facebook,
// color: Colors.blue,),
// FaIcon(FontAwesomeIcons.twitter,
// color: Colors.blue,),