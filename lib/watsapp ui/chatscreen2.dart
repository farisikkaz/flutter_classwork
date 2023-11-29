import 'package:flutter/material.dart';

class Chatscrn extends StatelessWidget {
  const Chatscrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        children:
          List.generate(5, (index) => ListTile(

          ),
          ),

      ),
    );
  }
}
