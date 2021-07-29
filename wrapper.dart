import 'package:flutter/material.dart';
import 'package:gym_manage/screens/authentication/authenticate.dart';
import 'package:gym_manage/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:gym_manage/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    if (user == null){
      return Authenticate();
    } else{
      return Home();
    }
  }
}
