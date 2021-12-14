// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    @required this.id,
    @required this.name,
    @required this.phone,
  });
}

class UsersScreen extends StatelessWidget {
  UsersScreen({Key key}) : super(key: key);

  List<UserModel> users = [
    UserModel(
      phone: '11.11.11',
      name: 'SACI Zakaria 1',
      id: 1,
    ),
    UserModel(
      phone: '22.22.22.',
      name: 'SACI Zakaria 2',
      id: 2,
    ),
    UserModel(
      phone: '33.33.3..',
      name: 'SACI Zakaria 3',
      id: 3,
    ),
    UserModel(
      phone: '44.44.',
      name: 'SACI Zakaria 4',
      id: 4,
    ),
    UserModel(
      phone: '55.55.',
      name: 'SACI Zakaria 4',
      id: 4,
    ),
    UserModel(
      phone: '55.55',
      name: 'SACI Zakaria 5',
      id: 5,
    ),  UserModel(
      phone: '22.22.22.',
      name: 'SACI Zakaria 2',
      id: 2,
    ),
    UserModel(
      phone: '33.33.3..',
      name: 'SACI Zakaria 3',
      id: 3,
    ),
    UserModel(
      phone: '44.44.',
      name: 'SACI Zakaria 4',
      id: 4,
    ),
    UserModel(
      phone: '55.55.',
      name: 'SACI Zakaria 4',
      id: 4,
    ),
    UserModel(
      phone: '55.55',
      name: 'SACI Zakaria 5',
      id: 5,
    ),  UserModel(
      phone: '22.22.22.',
      name: 'SACI Zakaria 2',
      id: 2,
    ),
    UserModel(
      phone: '33.33.3..',
      name: 'SACI Zakaria 3',
      id: 3,
    ),
    UserModel(
      phone: '44.44.',
      name: 'SACI Zakaria 4',
      id: 4,
    ),
    UserModel(
      phone: '55.55.',
      name: 'SACI Zakaria 4',
      id: 4,
    ),
    UserModel(
      phone: '55.55',
      name: 'SACI Zakaria 5',
      id: 5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 1.5,
                  color: Colors.grey[800],
                ),
              ),
          itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel users) => Padding(
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
