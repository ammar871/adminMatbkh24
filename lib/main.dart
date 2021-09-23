import 'package:admin_matbkh24/theme.dart';

import 'package:admin_matbkh24/ui/login_page/login_screen.dart';
import 'package:admin_matbkh24/ui/navigation_page/navigation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: theme(),
        initialRoute: LoginScreen.id,
        routes: {
        LoginScreen.id:(context)=>const LoginScreen(),
          NavigationScreen.id:(context)=>const NavigationScreen()

        },
    );
  }
}

