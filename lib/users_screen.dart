// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    this.id,
    this.name,
    this.phone
  });
}

class UsersScreen extends StatelessWidget {
  UsersScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 1.5,
                  color: Colors.grey[800],
                ),
              ),
          itemCount: 10),
    );
  }

  Widget buildUserItem() => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
                radius: 25,
                child: Text("1",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
            SizedBox(width: 20),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SACI Zakaria",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "06.95.06.54.54 ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      );
// 1. build Item
// 2. build list
// 3. add Item to List

}
