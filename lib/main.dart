import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proiect1_gdsc/my_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfilePage(
        lastName: 'Cosmescu',
        firstName: 'Stefan',
        profilePicPath: 'lib/poza.jpg',
        phoneNumber: '0754760187',
        emailAddress: 'stef.jeff@gmail.com',
      )
    );
  }
}
