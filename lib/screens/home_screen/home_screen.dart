import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/home_screen/app_bar.dart';
import 'package:instagram_ui/screens/home_screen/listt.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        child: AppBarr(),
        preferredSize: Size(MediaQuery.of(context).size.width, 55),
      ),
      body: Listt(),
    );
  }
}
