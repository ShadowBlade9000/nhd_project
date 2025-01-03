import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  Info({super.key});

  @override
Widget build(BuildContext context) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      constraints: BoxConstraints(maxWidth: 800),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Rights and Responsibilities of Ancient Egyptian Nobles', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            Container(height: 10),
            Text('In 3100 BC-642AD Egyptians had rights and responsibilities but nobles have more rights with more responsibilities which lead to rights and responsibilities today. A notable nobel is Ramesses who fought for the rights and responsibilities, and for the kingdom of Egypt and won keeping Egypt alive.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            Text(
'''

Heart of the Story:
When a new noble is needed for Egypt the pharaoh chooses a person that they are related to. A new nobles is usually selected when a nobles dies or does something bad and gets exiled. New nobles were selected because the pharaohs needed help ruling all of Egypt. Egyptian nobles were selected in the palace in front of the pharaoh. The people involved with nobles being chosen were highly rated people related to the pharaoh and not the poor peasants. This happened in ancient Egypt while the pharaohs ruled and the pyramids were being built.

Background: 
People ruled like noblemen before they were called noblemen. Ancient nobles were called patrician. The patricians slowly evolved into nobles which owned land and slaves. Patricians were the ancient noblemen because they also owned land and slaves. The world around Egypt had many countries including Northern Africa, Israel, Sudan, and Libya. 

Short-Term Effect:
Right after a noble is chosen the pharaoh would introduce them to a big room and have a feast welcoming them. The positive outcome of a new noble being chosen is that if the old nobles were corrupt the new one is not corrupt. The negative is that the nobles do not know what to do and the people have to get used to him. When a new noble is selected the noble usually owns lots of land.

Long-Term Effect:
The long term effect of the nobles being chosen in Egypt has affected the government from then on because the effect caused the Romans and other governments to have noblemen to help the king's rule. 
Build-up:
Some main Egyptian nobles are Ramesses I, Ramesses III, Ramesses VI, Setnakhte, Ramesses IX, Robert II, Neferirkare Kakai, and Ahmose. The nobles got ready for ruling by commanding their slaves and learning how the government works. The events that led up to a nobleman being chosen were as follows. They would need to be related to the pharaoh or have a lot of money, they would have to own a lot of land with slaves to tend to it, and they would have to be at least twenty years old. 

''', style: TextStyle(fontSize: 15, height: 1.3, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
}
}
