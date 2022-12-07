import 'package:dm_appointment/views/splash_view.dart';
import 'package:dm_appointment/views/test.dart';
import 'package:dm_appointment/views/test_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DM Appointment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GoogleHome(),
    );
  }
}
