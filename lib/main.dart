import 'package:flutter/material.dart';
import 'package:narendra/ui/pages/auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Naren',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        primaryColor: Colors.green,
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.lightGreen,
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.all(16)),
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.all(16),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w500)),
      ),
      home: LoginPage(),
    );
  }
}
