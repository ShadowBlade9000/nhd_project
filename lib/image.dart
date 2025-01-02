import 'package:flutter/material.dart';

class K extends StatelessWidget {
  K({super.key});

  @override
Widget build(BuildContext context) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      constraints: BoxConstraints(maxWidth: 800),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Images', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            Container(height: 10),
            Image.asset('assets/images/egypt.jpg', width: 800,),
            Text('placeholder', style: TextStyle(fontSize: 15, height: 1.3),),
          ],
        ),
      ),
    )
  );
}
}