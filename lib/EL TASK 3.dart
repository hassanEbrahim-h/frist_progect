
import 'package:flutter/material.dart';

class tasek extends StatelessWidget {
  const tasek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding:  EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFFFC7D1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset(
                    "assets/image/134025.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
             SizedBox(height: 20),
             Text(
              "C2 Analog Clock",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 5),
            Text(
              "\$542",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
             SizedBox(height: 10),
            Row(
              children: [
                Row(
                  children: List.generate(
                    4,
                        (index) =>
                    Icon(Icons.star, color: Colors.amber, size: 20),
                  ),
                ),
                 Icon(Icons.star_border, color: Colors.amber, size: 20),
                 SizedBox(width: 8),
                 Text("4.5 (32)")
              ],
            ),
             SizedBox(height: 20),
             Text(
              "A classically designed analog clock that would add to the decor of your house. Analog clock has hour, minutes and seconds hands.",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
             SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text("Type", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Chip(label: Text("Analog")),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Material",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Chip(label: Text("Plastic")),
                  ],
                ),
              ],
            ),
             SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:  EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
