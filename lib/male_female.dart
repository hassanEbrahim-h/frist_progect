


import 'package:flutter/material.dart';

class grande extends StatelessWidget {
  final String title;
  final IconData ICON;
  final bool isactave;
  final   void Function()? onTap;
  const grande({super.key, required this.title,required this.ICON , this.isactave=false, this.onTap});

  @override
  Widget build(BuildContext context) {

    return Expanded(

      child: InkWell(
        onTap: onTap,
        child: Container(
          padding:EdgeInsets.all(24) ,

          decoration:BoxDecoration(
            color:isactave?Color(0xffE83D67) :Color(0xff333244),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(

            children: [
              Icon(ICON,size: 96,),
              Text(title ,style: TextStyle(fontSize: 25),)
            ],
          ),
        ),
      ),
    );
  }
}
