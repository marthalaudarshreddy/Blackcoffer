import 'package:blackoffer/personel.dart';
import 'package:blackoffer/refine.dart';
import 'package:flutter/material.dart';

import 'explore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Explorre(),
    );
  }
}
