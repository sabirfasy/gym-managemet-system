
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gym_manage/screens/wrapper.dart';
import 'package:gym_manage/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:gym_manage/models/user.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value (
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

