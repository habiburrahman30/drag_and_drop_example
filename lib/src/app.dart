import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/game_page.dart';
import 'pages/home_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      smartManagement: SmartManagement.onlyBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      // home: GamePage(),
    );
  }
}
