

import 'package:flutter/material.dart';

class crean extends StatelessWidget {
  const crean({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Computer Scines"),
        centerTitle: true,
        leading: Icon(Icons.list, color: Colors.white),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        ]
      ),

      body:
         Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFIdo3usKWg1U787wTEh5wDvkRWxfuq_yeFA&s",


      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.indigoAccent,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite"),
        ],
        backgroundColor: Colors.brown,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
      ),
    );
  }
}