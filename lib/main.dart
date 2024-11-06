import 'package:flutter/material.dart';
import 'package:asadel_store_mobile/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asadel Store Mobile',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}
