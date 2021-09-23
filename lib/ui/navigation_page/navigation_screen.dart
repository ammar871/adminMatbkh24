import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'componts/body_navigation.dart';

class NavigationScreen extends StatelessWidget {
  static String id="HomeScreen";

  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: BoyNavigation(),
    );
  }
}
