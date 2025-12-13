
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:frist_progect/male_female.dart';
import 'package:frist_progect/result_screan.dart';

import 'age.dart';
import 'custmar_appbar_bmi.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  bool ismail=true;
  int height=200;
  int weight =19;
  int Adult=4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:custmar_abbBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [


                 grande(ICON: Icons.male,title: "mail",
                 isactave:ismail,
                  onTap: (){
                    setState(() {
                      ismail=true;
                    });
                  },
                 ),
                SizedBox(width: 10),
                grande(title: 'female', ICON: Icons.female,
                isactave: !ismail,
                  onTap: (){
                  setState(() {
                    ismail=false;
                  });

                  },
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              padding:EdgeInsets.symmetric(vertical: 30) ,
              decoration:BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12),

              ),

              child:Column(
                spacing:20,
                children: [
                  Text("Height",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  ),),


                  Text.rich(TextSpan(
                   children:[
                     TextSpan(
                       text:height.toString() ,style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,),


                  ),
                   TextSpan(
                     text: "CM",style: TextStyle(
                     fontSize: 14,
                   )
                   ),
                   ],
                  ),),
                  Slider( max: 300,value: height.toDouble(), onChanged: (value){
                    setState(() {
                      height=value.toInt();
                    });
                  },
                  activeColor: Color(0xffE83D67),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(

              children: [

                Age(title: ' Weight', text:weight,
                increment: (){
                   setState(() {
                     weight++;
                   });
                },
                  decrment: () {
                    setState(() {
                      if(weight>1)
                      weight--;
                    });
                  },
                ),
                SizedBox(width: 10,),
                Age(title: ' age', text:Adult,
                  increment: (){
                    setState(() {
                      Adult++;
                    });
                  },
                  decrment: () {
                    setState(() {
                      if(Adult>1)
                        Adult--;
                    });
                  },
                ),


              ],
            )
          ],
        ),
      ),
       bottomNavigationBar:InkWell
         ( onTap: (){
           Navigator.push(context, MaterialPageRoute(builder:(context) => result_screan(
             bmvalue: weight/pow((height/100), 2),
           )));
       },
         child: Container(
          color: Color(0xffE83D67),
           alignment:Alignment.center,
           height: 120,
           child:

               Text("Calculate",
               style: TextStyle(
                 fontSize: 32,
                 fontWeight: FontWeight.w600,

               ),),


         ),
       ),

    );
  }
}
