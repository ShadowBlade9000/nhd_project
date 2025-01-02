import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  Info({super.key});

  @override
Widget build(BuildContext context) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      constraints: BoxConstraints(maxWidth: 800),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Information', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            Container(height: 10),
            Text(
'''

''', style: TextStyle(fontSize: 15, height: 1.3),),
          ],
        ),
      ),
    )
  );
}
}