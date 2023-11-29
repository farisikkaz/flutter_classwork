import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Slivers1(),));
}
class Slivers1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
           floating: true,
           title: Text("Whatsapp",style: TextStyle(fontWeight: FontWeight.bold),),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    labelText: "Search",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera)
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(List.generate(30, (index) =>
          ListTile(
            title: Text("user $index"),
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/book.jpg")),
            trailing: Icon(Icons.message),
          ))))

        ],
      ),
    );
  }
}
