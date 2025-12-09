


import 'package:flutter/material.dart';

class Age extends StatelessWidget  {
  final String title;
  final int text;
  final IconData ICON;
  final IconData icon;
  const Age({super.key ,required this.title, required this.text,required this.ICON,
  required this.icon});

  @override
  Widget build(BuildContext context) {
    return   Expanded(child:
    Container(

      padding:EdgeInsets.symmetric(vertical: 15) ,
      decoration:BoxDecoration(
        color: Color(0xff333244),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(title,style: TextStyle(
            fontSize: 20,
          ),),
          SizedBox(width: 10,),
          Text(text.toString() ,style: TextStyle(
            fontSize: 40,
            fontWeight:FontWeight.w700,
          ),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton.small(onPressed: (){},
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(icon),
              ),
              FloatingActionButton.small(onPressed: (){},
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(ICON),
              ),

            ],
          )
        ],
      ),
    ),
    );
  }
}
