import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp( home: ListView5(),));
}

class ListView5 extends StatelessWidget {
var fruitimg = [ "https://images.unsplash.com/photo-1579613832125-5d34a13ffe2a?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
'https://images.unsplash.com/photo-1591073113125-e46713c829ed?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
'https://images.unsplash.com/photo-1587132137056-bfbf0166836e?q=80&w=1180&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
'https://images.unsplash.com/photo-1474152042542-1e794677a34b?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
'https://images.unsplash.com/photo-1595475207225-428b62bda831?q=80&w=1180&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
'https://images.unsplash.com/photo-1585059895524-72359e06133a?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
'https://images.unsplash.com/photo-1576181177940-cb8592693079?q=80&w=1175&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
'https://images.unsplash.com/photo-1531171596281-8b5d26917d8b?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'];

var namefr =['Apple',
'Mango','Banana','Grapes','WaterMelons','Kiwi','Orange','Peach'];
var pricefr =['\$ 20 per Kg','\$30 per Doz','\$ 10 per Doz','\$8 per Kg','\$25 per Kg','\$40 per Pec','\$15 per Doz','\$ 20 per Kg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('List View Custom'),

      ) ,
      body: ListView.custom(childrenDelegate:
    //SliverChildListDelegate(
      //     [
      //   Card(child: Center(child: Text('faris'),),),
      //   Card(child: Center(child: Text('faris'),),),
      //   Card(child: Center(child: Text('faris'),),),
      //   Card(child: Center(child: Text('faris'),),),
      //
      //
      // ]
       // List.generate(10, (index) => Card(child: Center(child: Text('helloi'),),))
     // )
        SliverChildBuilderDelegate(childCount: 8,(context, index) =>

        Card(
          child: Row(children: [
            Image.network(fruitimg[index],scale: 12,alignment: Alignment.centerLeft,),
            Column(
              children: [
                Text(namefr[index]),
                Text(pricefr[index]),

              ],
            ),

            MaterialButton(onPressed: (){},



              shape: StadiumBorder(),
              color: Colors.brown,
              minWidth: 120,
              height: 40,

                child: Text('add to cart',style: TextStyle(color: Colors.white),textAlign: TextAlign.right,))
          ],),
        ))
      ),
    );
  }
}
