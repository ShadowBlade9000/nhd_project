import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class K extends StatelessWidget {
  const K({super.key});

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
            const Text('Pictures', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
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
            WidgetSpan(
            child: Image.network('https://cdn-cdaac.nitrocdn.com/tFOqLIaMYIaFjSGNUoYXbEDiJHtqbEtH/assets/images/optimized/rev-0596f3a/www.historyonthenet.com/wp-content/uploads/2014/07/society_pyramid.jpg'),
            ),
          // Actual URL
          const TextSpan(
            text: '''\n'''
          ),
          TextSpan(
            text: 'https://cdn-cdaac.nitrocdn.com/tFOqLIaMYIaFjSGNUoYXbEDiJHtqbEtH/assets/images/optimized/rev-0596f3a/www.historyonthenet.com/wp-content/uploads/2014/07/society_pyramid.jpg',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://cdn-cdaac.nitrocdn.com/tFOqLIaMYIaFjSGNUoYXbEDiJHtqbEtH/assets/images/optimized/rev-0596f3a/www.historyonthenet.com/wp-content/uploads/2014/07/society_pyramid.jpg');
              },
          ),
          const TextSpan(
            text: '\nAn image of a society pyramid of Egyptian classes.\n\n\n',
          ),
          WidgetSpan(
            child: Image.network('https://i0.wp.com/egypt-museum.com/wp-content/uploads/2023/11/Ancient-Egyptian-Nobleman.jpg'),
            ),
          // Actual URL
          const TextSpan(
            text: '''\n'''
          ),
          TextSpan(
            text: 'https://i0.wp.com/egypt-museum.com/wp-content/uploads/2023/11/Ancient-Egyptian-Nobleman.jpg?w=682&ssl=1',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                _launchURL('https://i0.wp.com/egypt-museum.com/wp-content/uploads/2023/11/Ancient-Egyptian-Nobleman.jpg?w=682&ssl=1');
              },
          ),
          const TextSpan(
            text: '\nAn carved image of a Egyptian Nobleman.\n\n',
          ),
        ],
      ),
    );
  }
}
