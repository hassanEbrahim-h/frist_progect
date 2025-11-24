

import 'package:flutter/material.dart';

class crean extends StatelessWidget {
  const crean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor:Colors.blueGrey ,
        title:Text("Computer Scines",style: TextStyle(
          color: Colors.black,
              fontSize: 30,
          fontWeight: FontWeight.bold,
        ), ) ,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white, size: 30,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.red, size: 30,))
        ],
        leading: Icon(Icons.list, color: Colors.white,),
      ),
      body: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFIdo3usKWg1U787wTEh5wDvkRWxfuq_yeFA&s",
        height:900,

      ),
      floatingActionButton: FloatingActionButton(onPressed:(){},
     child: Icon(Icons.add),
      backgroundColor: Colors.indigoAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite")
      ],
      backgroundColor: Colors.brown,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
      ),
    );
  }
}
