import 'package:flutter/material.dart';
import 'package:tutor_flutter/login.dart';

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
        home: SignUpApp(),
        );
        }
        }
        