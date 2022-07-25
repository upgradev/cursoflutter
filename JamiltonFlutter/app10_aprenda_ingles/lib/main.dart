import 'package:app10_aprenda_ingles/telas/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown, 
        scaffoldBackgroundColor: Color(0xfff5e9b9),
        
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
