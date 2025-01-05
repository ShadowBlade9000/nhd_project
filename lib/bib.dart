import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class Bib extends StatelessWidget {
  const Bib({super.key});

  @override
Widget build(BuildContext context) {
  launchURL(String url) async {
    if(!url.startsWith('http://') && !url.startsWith('https://')) {
      url = 'https://$url';
    }
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      constraints: const BoxConstraints(maxWidth: 800),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Bibliography', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            Container(height: 10),
            const TextWithHyperlinks(),
          ],
        ),
      ),
    
  );
}
}

class TextWithHyperlinks extends StatelessWidget {
  const TextWithHyperlinks({super.key});

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
        style: const TextStyle(color: Colors.black, fontSize: 16),
        children: [
          const TextSpan(
            text: '''Honadmin. "Egyptian Social Classes and Society: How Exactly Did It Work?" History, 16 Feb. 2023, ''',
          ),
          // Actual URL
          TextSpan(
            text: 'https://www.historyonthenet.com/egyptian-social-classes',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://www.historyonthenet.com/egyptian-social-classes');
              },
          ),
          const TextSpan(
            text: '\n   This source let me learn more about the social class of Egyptians. It clearly explains what Nobles did and how they help. In all this information help me understand Egyptian Nobles.\n\n',
          ),
          const TextSpan(
            text: '''"West Legon, Ghana: A Guide to This Vibrant Neighborhood – Kingsgate LifestyleKingsgate Lifestyle." Kingsgate Entertainment - Accommodation & Venue - Thohoyandou, ''',
          ),
          // Actual URL
          TextSpan(
            text: 'https://historylink101.com/n/egypt_1/a-nobles.htm',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://historylink101.com/n/egypt_1/a-nobles.htm');
              },
          ),
          const TextSpan(
            text: '\nThis source helped me learn that Nobles collected taxes. The Nobles also had many servants. The Nobles would have servants that would make them extravagant food.\n\n',
          ),
          const TextSpan(
            text: '"Egyptian Social Structure [ushistory.org]." US History, ',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 16,
            ),
          ),
          // Actual URL
          TextSpan(
            text: 'https://www.ushistory.org/civ/3b.asp',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://www.ushistory.org/civ/3b.asp');
              },
          ),
          const TextSpan(
            text: '\n   This source helped me learn that the Egyptians thought that the pharaohs were equivalent to gods. And that Egyptians\n\n',
          ),
          //done
          const TextSpan(
            text: '''Book: Assmann, Jan. The Mind of Egypt: History and Meaning in the Time of the Pharaohs. Recording for the Blind & Dyslexic, 2002.''',
          ),
          // Actual URL
          TextSpan(
            text: '',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://irp-cdn.multiscreensite.com/04cd93d4/files/uploaded/Y3');
              },
          ),
          const TextSpan(
            text: '\n   This was a good book and I learned about pharaohs and nobles. It told me about the rights of egyptian nobles\n\n',
          ),
          const TextSpan(
            text: '''“Ancient Egypt Culture.” Ancient Egypt, ''',
          ),
          // Actual URL
          TextSpan(
            text: 'https://historylink101.com/n/egypt_1',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://historylink101.com/n/egypt_1');
              },
          ),
          const TextSpan(
            text: '\n   This website told me about ancient egyptians and what they did in ancient egypt. And what their responsibilities were.\n\n',
          ),
          TextSpan(
            text: '''Multiscreensite, Accessed 19 Dec. 2024, '''
          ),
          TextSpan(
            text: 'https://irp-cdn.multiscreensite.com/04cd93d4/files/uploaded/Y3%20History%20Lesson%204%20Social%20Groups.pdf',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://irp-cdn.multiscreensite.com/04cd93d4/files/uploaded/Y3%20History%20Lesson%204%20Social%20Groups.pdf');
              },
          ),
          TextSpan(
            text: '''\n   This source helped me grasp the idea of rights and responsibilities for Egyptian nobles better. And how most Egyptians lived in ancient times.'''
          ),
        ],
      ),
    );
  }
}
