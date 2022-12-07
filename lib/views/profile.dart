import 'package:flutter/material.dart';

import '../styles/commonmodule/app_bar.dart';
import '../utils/constants/size_oriantation.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenContext.getScreenContext(context);
    if(ScreenContext.width! > 550) {
      ///tablets...............
      return Scaffold(
        appBar: MyAppBars.tabAppBar(''),
      );
    }
    ///phones...............
    return Scaffold(
      appBar: MyAppBars.myAppBar(''),
    );
  }
}
