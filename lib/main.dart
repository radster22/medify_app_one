import 'package:flutter/material.dart';
import 'package:flutter_app_one/pages/home_page.dart';
import 'package:flutter_app_one/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: HomePage(),          //login Page set as home pls check
     );
   }
 }




