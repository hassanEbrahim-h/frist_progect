


import 'package:flutter/material.dart';

class abbBar extends StatelessWidget implements PreferredSizeWidget {
  const abbBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
    centerTitle: true,
    title: Text("BMI Calculatorp",
    style: TextStyle(
    fontSize: 25,
    color: Colors.white
    )
    ),
    backgroundColor: Color(0xff24263B),

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(54);
}
