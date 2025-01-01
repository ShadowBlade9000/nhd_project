import 'package:flutter/material.dart';

class Bib extends StatelessWidget {
  const Bib({super.key});

  @override
Widget build(BuildContext context) {
  return const Scaffold(
    body: Column(
      children: [
        Text('Bibliography', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        Text('''

  Honadmin. "Egyptian Social Classes and Society: How Exactly Did It Work?" History, 16 Feb. 2023, www.historyonthenet.com/egyptian-social-classes.
  This source let me learn more about the social class of Egyptians. It clearly explains what Nobles did and how they help. In all this information help me understand Egyptian Nobles.
  "West Legon, Ghana: A Guide to This Vibrant Neighborhood – Kingsgate LifestyleKingsgate Lifestyle." Kingsgate Entertainment - Accommodation & Venue - Thohoyandou, mykingsgate.co.za/info/nobles-in-ancient-egypt-1679.
  This source helped me learn that Nobles collected taxes. The Nobles also had many servants. The Nobles would have servants that would make them extravagant food.
  "Egyptian Social Structure [ushistory.org]." US History, www.ushistory.org/civ/3b.asp.
  This source helped me learn that the Egyptians thought that the pharaohs were equivalent to gods. And that Egyptians  

  Book: Assmann, Jan. The Mind of Egypt: History and Meaning in the Time of the Pharaohs. Recording for the Blind & Dyslexic, 2002. 
  This was a good book and I learned about pharaohs and nobles. It told me about the rights of egyptian nobles

  “Ancient Egypt Culture.” Ancient Egypt, historylink101.com/n/egypt_1. Accessed 19 Dec. 2024. 
    This website told me about ancient egyptians and what they did in ancient egypt. And what their responsibilities were.
  Multiscreensite, irp-cdn.multiscreensite.com/04cd93d4/files/uploaded/Y3 History Lesson 4 Social Groups.pdf. Accessed 19 Dec. 2024. 
  This source helped me grasp the idea of rights and responsibilities for Egyptian nobles better. And how most Egyptians lived in ancient times.
''', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15),),
      ],
    ),
  );
}
}