import 'dart:async';
import 'package:dm_appointment/views/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/size_oriantation.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});


  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  Widget build(BuildContext context) {
    ScreenContext.getScreenContext(context);
    // Size size = MediaQuery.of(context).size;
    // double width = size.width > size.height ? size.height : size.width;


    // Size screenSize = MediaQuery.of(context).size;
    // Orientation orientation = MediaQuery.of(context).orientation;


    if(ScreenContext.width! > 550) {
      ///tablets...............
      return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: 280,
                  width: 200,
                  child: Image.asset('assets/images/logo.gif'),
                ),
              ),const SizedBox(height: 50,),
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 60.0),
                child: Text('Office of the District Magistrate \n Paschim Bardhaman',
                  style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )
      );
    }
    ///Phones...............
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //  const SizedBox(width: double.infinity,height: 150,),
            Center(
              child: SizedBox(
                height: 250,
                width: 170,
                child: Image.asset('assets/images/logo.gif'),
              ),
            ),const SizedBox(height: 70,),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 60.0),
              child: Text('Office of the District Magistrate \n Paschim Bardhaman',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
          ],
        )
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () async {
      await Get.off(() => const LoginPage(),
          duration: const Duration(seconds: 1), //duration of transitions, default 1 sec
          transition: Transition.rightToLeft
      );
    });
  }
}
