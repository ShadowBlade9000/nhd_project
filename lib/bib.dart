import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class Bib extends StatelessWidget {
  Bib({super.key});

  @override
Widget build(BuildContext context) {
  _launchURL(String url) async {
    if(!url.startsWith('http://') && !url.startsWith('https://')) {
      url = 'https://' + url;
    }
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      constraints: BoxConstraints(maxWidth: 800),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('Bibliography', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            Container(height: 10),
            TextWithHyperlinks(),
          ],
        ),
      ),
    
  );
}
}

class TextWithHyperlinks extends StatelessWidget {
  // Function to launch the URL when clicked
  _launchURL(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 16),
        children: [
          TextSpan(
            text: '''This source let me learn more about the social class of Egyptians. 
It clearly explains what Nobles did and how they help. In all this information help me understand Egyptian Nobles.\n\n''',
          ),
          // Actual URL
          TextSpan(
            text: 'https://mykingsgate.co.za/info/nobles-in-ancient-egypt-1679',
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://mykingsgate.co.za/info/nobles-in-ancient-egypt-1679');
              },
          ),
          TextSpan(
            text: '\n\nThis source helped me learn that Nobles collected taxes. The Nobles also had many servants. The Nobles would have servants that would make them extravagant food.\n\n',
          ),
          // Actual URL
          TextSpan(
            text: 'https://www.ushistory.org/civ/3b.asp',
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://www.ushistory.org/civ/3b.asp');
              },
          ),
          TextSpan(
            text: '\n\nThis source helped me learn that the Egyptians thought that the pharaohs were equivalent to gods. And that Egyptians\n\n',
          ),
          TextSpan(
            text: 'Book: Assmann, Jan. The Mind of Egypt: History and Meaning in the Time of the Pharaohs.',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: ' Recording for the Blind & Dyslexic, 2002.\n\n',
          ),
          TextSpan(
            text: '''This was a good book and I learned about pharaohs and nobles. It told me about the rights of Egyptian nobles.\n\n''',
          ),
          // Actual URL
          TextSpan(
            text: 'https://historylink101.com/n/egypt_1',
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://historylink101.com/n/egypt_1');
              },
          ),
          TextSpan(
            text: ' Ancient Egypt, historylink101.com/n/egypt_1. Accessed 19 Dec. 2024.\n\n',
          ),
          TextSpan(
            text: '''This website told me about ancient Egyptians and what they did in ancient Egypt. And what their responsibilities were.\n\n''',
          ),
          // Actual URL
          TextSpan(
            text: 'https://irp-cdn.multiscreensite.com/04cd93d4/files/uploaded/Y3 History Lesson 4 Social Groups.pdf',
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://irp-cdn.multiscreensite.com/04cd93d4/files/uploaded/Y3 History Lesson 4 Social Groups.pdf');
              },
          ),
          TextSpan(
            text: ' irp-cdn.multiscreensite.com/04cd93d4/files/uploaded/Y3 History Lesson 4 Social Groups.pdf. Accessed 19 Dec. 2024.\n\n',
          ),
          TextSpan(
            text: '''This source helped me grasp the idea of rights and responsibilities for Egyptian nobles better. And how most Egyptians lived in ancient times.''',
          ),
        ],
      ),
    );
  }
}
