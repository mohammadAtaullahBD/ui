// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ui/helper/http.dart';
import 'package:ui/repositories/user_repository.dart';
import 'package:ui/theme.dart';
import 'package:ui/views/add_user_view.dart';
import 'package:ui/views/dashbord_view.dart';
import 'package:ui/views/login_view.dart';
import 'package:ui/views/main_view.dart';
import 'package:ui/views/test_view.dart';

void main() async {
  final usersRepo = UserRepository();
  await usersRepo.deleteData(8);
  // print(await getData('https://www.test.minimaxhealthcare.org/api/users'));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Material App',
    theme: getThemeData(),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).primaryColor,
      //   title: const Text('Home Page'),
      // ),
      body: MainView(),
    );
  }
}
