
import 'package:flutter/material.dart';
import 'package:frist_progect/male_female.dart';

import 'age.dart';
import 'custmar_appbar_bmi.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:abbBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                 grande(ICON: Icons.male,title: "mail",),
                SizedBox(width: 10),
                grande(title: 'female', ICON: Icons.female,),
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
                  Text("Height" ,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  ),),


                  Text.rich(TextSpan(
                   children:[
                     TextSpan(
                       text:"150",style: TextStyle(
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
                  Slider(value: .7, onChanged: (value){},
                  activeColor: Color(0xffE83D67),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(

              children: [

                Age(title: ' Weight', text: 20, ICON: Icons.add, icon: Icons.remove,),
                SizedBox(width: 10,),
                Age(title: ' age', text: 30, ICON: Icons.add, icon: Icons.remove,),


              ],
            )
          ],
        ),
      ),
       bottomNavigationBar:Container(
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

    );
  }
}
