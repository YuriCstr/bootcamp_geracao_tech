import 'package:flutter/material.dart';
import 'package:travel_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 215, 221, 251)),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
