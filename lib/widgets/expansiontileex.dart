import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Expansiontile1(),));
}
class Expansiontile1 extends StatelessWidget {
var notif =['Show Notification','Sound','ReactionNotification'];
var privc =['Last Seen ','Profile Picture','About'];
var storg =['Manage storage ','Network Usage', 'Proxy'];
var clr1 =[Colors.lightBlueAccent,Colors.red,Colors.black];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extension Tile"),

      ),
      body: ListView(
        children: [
          ExpansionTile(
            shape: CircleBorder(),
            title: Text("Notification"),
          trailing: Icon(Icons.notification_add_outlined),
          children: List.generate(3, (index) =>
            ListTile(
              title: Text(notif[index]),
              leading: CircleAvatar(
               
                backgroundImage: AssetImage("assets/images/book.jpg"),
              ),
            ),
          ),
          ),
          ExpansionTile(title: Text("Privacy"),
            trailing: Icon(Icons.privacy_tip_outlined),
            children: List.generate(3, (index) =>
                ListTile(
                  title: Text(privc[index]),
                  leading: CircleAvatar(

                    backgroundColor: clr1[index],
                  ),
                ),
            ),
          ),
          ExpansionTile(title: Text("Storage"),
            trailing: Icon(Icons.storage),
            children: List.generate(3, (index) =>
                ListTile(
                  title: Text(storg[index]),
                  leading: CircleAvatar(

                    child: Icon(Icons.sd_storage_outlined),
                  ),
                ),
            ),
          )

        ],
      ),
    );
  }
}
