import 'package:flutter/material.dart';
import 'package:newapp/home.dart';
import 'package:newapp/services/newsServices.dart';


void main() {
  runApp(const MyApp());
   NewsService();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
