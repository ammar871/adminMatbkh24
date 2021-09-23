
import 'package:admin_matbkh24/ui/home_page/componts/list_home.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'componts/expand_details_first.dart';
import 'componts/expand_lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: const [
          ExpandDetailsFirst(),
          ExpandLists()
        ],
      ),
    );
  }
}






