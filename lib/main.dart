// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  //debugPaintSizeEnabled = true;
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final showCard = true; // Set to false to show ListView

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        primarySwatch: Colors.blue,
        title: 'Flutter layout demo',
        home: Scaffold(
        appBar: AppBar(
        title: Text('Flutter layout demo'),
    ),
    body: Center(child: showCard ? _buildCard() : _buildStack()),
    ),
    home: MyHomePage(title: 'Flutter Demo Home Page'),
    ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var card = SizedBox(
        height: 210.0,
        // #docregion Card
        Widget _buildCard() => SizedBox(
        height: 210,
        child: Card(
        child: Column(
        children: [
        @@ -70,14 +57,30 @@ class _MyHomePageState extends State<MyHomePage> {
        ),
        ),
        );
        // #enddocregion Card

        return Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
        ),
        body: Center(
        child: card,
        ),
        // #docregion Stack
        Widget _buildStack() => Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
        CircleAvatar(
        backgroundImage: AssetImage('images/pic.jpg'),
        radius: 100,
        ),
        Container(
        decoration: BoxDecoration(
        color: Colors.black45,
        ),
        child: Text(
        'Mia B',
        style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        ),
        ),
        ),
        ],
        );
        }
        // #enddocregion Stack
    }