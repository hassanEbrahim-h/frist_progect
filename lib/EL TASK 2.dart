import 'package:flutter/material.dart';

class ELTA2SK  extends StatelessWidget {
  const ELTA2SK ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Appointments",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.menu, color: Colors.white),
          )
        ],
        leading:  Padding(
          padding: EdgeInsets.only(left: 12),
          child: Icon(Icons.medical_services, color: Colors.white),
        ),
      ),


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),


           Center(
            child: Text(
              "Wednesday, 22 May 2019",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

           SizedBox(height: 50),


          Expanded(
            child: ListView(
              children: [
                buildAppointment("HELLLO", "10:50"),
                buildAppointment("HASSAN", "13:00"),
                buildAppointment("ABDLRAHMAN", "15:20"),
                buildAppointment("AHMED", "16:10"),
                buildAppointment("Alexandru ", "16:40",
                    isCancel: true),
                buildAppointment("DESOUK", "08:00",
                    isDone: true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAppointment(String name, String time,
      {bool isCancel = false, bool isDone = false}) {
    return Container(
      padding:  EdgeInsets.symmetric(vertical:10),
      decoration:  BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12),
        ),
      ),
      child: ListTile(
        title: Text(
          name,
          style:  TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Row(
          children: [
            Icon(Icons.access_time, size: 18, color: Colors.grey),
            SizedBox(width: 5),
            Text(
              time,
              style:  TextStyle(fontSize: 15),
            ),
          ],
        ),


        trailing: isCancel
            ?  Icon(Icons.close, color: Colors.red, size: 40)
            : isDone
            ?  Icon(Icons.check, color: Colors.green, size: 40)
            : null,
      ),
    );
  }
}