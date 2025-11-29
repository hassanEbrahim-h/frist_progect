import 'package:flutter/material.dart';

class task extends StatelessWidget {
  const task({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
          Colors.blue,
           Colors.purple,
           ],
            begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
           ),
           ),
            child: Center(
                child: Column(
               mainAxisSize: MainAxisSize.min,
                 children: [
                  Container(
                  width: 120,
                height: 120,
                 decoration: const BoxDecoration(
                    color: Colors.white,
                       shape: BoxShape.circle,
                    ),
                       child: const Icon(
                           Icons.beach_access,
                            color: Colors.orange,
                              size: 60,
                            ),
                              ),
                               const SizedBox(height: 20),
                                  const Text(
                                         "This is a sample text.",
                                           style: TextStyle(
                                                  fontSize: 18,
                                              color: Colors.white,
                   ),
                  )
                ],
              ),
            ),
          ),
         );
       }
    }