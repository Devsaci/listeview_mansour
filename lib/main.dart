import 'package:flutter/material.dart';
import 'package:messengerdesign/users_screen.dart';
import 'messager_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner : false,
      title: 'list View Mansour',
      home: UsersScreen(),
    );
  }
}
