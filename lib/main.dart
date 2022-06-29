import 'package:flutter/material.dart';
import 'package:get_it_tutorial/locator.dart';
import 'package:get_it_tutorial/view/home_page.dart';

void main() {
  // TODO 4: call the setup method to initialize the services
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageView(),
    );
  }
}