


import 'package:flutter/material.dart';

class grande extends StatelessWidget {
  final String title;
  final IconData ICON;
  const grande({super.key, required this.title,required this.ICON});

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Container(
        padding:EdgeInsets.all(24) ,

        decoration:BoxDecoration(
          color: Color(0xff333244),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(

          children: [
            Icon(ICON,size: 96,),
            Text(title)
          ],
        ),
      ),
    );
  }
}
