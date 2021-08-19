import 'package:flutter/material.dart';
import 'package:zuri_hng/widgets/form_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zuri internship',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: FormApp(),
    );
  }
}

class FormApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 3.0,title: Text('zuri intenship'),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          "assets/images/logo.jpeg",
          height: 160.0,
          width: 240.0,
        ),
      ),),
    body: SingleChildScrollView(
      child: Container(

        child: FormForm(),
      ),
    ),);
  }
}

