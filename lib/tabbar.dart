import 'package:flutter/material.dart';
import 'package:nhd_project/bib.dart';
import 'package:nhd_project/info.dart';
import 'package:nhd_project/image.dart';

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'National History Day Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('National History Day Website'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.image),
              ),
              Tab(
                icon: Icon(Icons.info),
              ),
              Tab(
                icon: Icon(Icons.description),
              ),
            ],
          ),
        ),
        body:  const TabBarView(
          children: <Widget>[
            K(),
            Info(),
            Bib(),
          ],
        ),
      ),
    );
  }
}
