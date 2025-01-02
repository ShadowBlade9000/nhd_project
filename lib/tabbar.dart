import 'package:flutter/material.dart';
import 'package:nhd_project/bib.dart';
import 'package:nhd_project/info.dart';
/// Flutter code sample for [TabBar].

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                icon: Icon(Icons.cloud_outlined),
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
        body:  TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's sunny here"),
            ),
            Info(),
            Bib(),
          ],
        ),
      ),
    );
  }
}
