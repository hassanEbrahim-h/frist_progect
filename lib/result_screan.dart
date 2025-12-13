


import 'package:flutter/material.dart';
import 'package:frist_progect/custmar_appbar_bmi.dart';

class result_screan extends StatelessWidget {
  final double bmvalue;
  const result_screan({super.key, required this.bmvalue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  custmar_abbBar(),
     body: Padding(
       padding: const EdgeInsets.all(16),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
            Text(" Your Result",style: TextStyle(
              fontSize: 50,
            ),),

           Expanded(
             child: Container(
               width: double.infinity,
               padding: EdgeInsets.symmetric(vertical: 48),
               decoration:BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
                 color: Color(0Xff333244),
               ) ,
               child: Column(
                 spacing: 20,
                 children: [
                   Text(bmistatus(),style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.w700,
                     color:Colors.green,
                   ),),
                   Text(bmvalue.toStringAsFixed(3),style: TextStyle(
                     fontSize: 64,
                     fontWeight: FontWeight.w700,
                     color:Colors.white,
                   ),),
                   Text(bmiDescription(),style: TextStyle(
                     color: Colors.white,
                   ), textAlign: TextAlign.center,)
                 ],
               ),

             ),
           )

         ],



       ),
     ),
      bottomNavigationBar:

         Container(
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




  String bmistatus(){
    if(bmvalue<=18.4){
      return"UnderWight";}
    else if (bmvalue>=18.5&&bmvalue<=24.9){
      return"Normal";}
     else if (bmvalue>=25&&bmvalue<=39.9){
       return "OverWeight";
    }
     else {
       return "obese";
    }
  }
  String bmiDescription() {
    if (bmvalue <= 18.4) {
      return "You are underweight. You should eat more healthy food.";
    } else if (bmvalue>=18.5&&bmvalue<=24.9)  {
      return "Your weight is normal. Keep going!";
    } else if (bmvalue>=25&&bmvalue<=39.9)  {
      return "You are overweight. Try to exercise more.";
    } else {
      return "You are obese. Please consult a doctor.";
    }
  }
}
