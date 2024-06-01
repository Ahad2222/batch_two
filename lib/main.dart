import 'package:batch_two/constants/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: Scaffold(
        backgroundColor: Color(0xfffafafa),
        appBar: myCustomAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 80,
            ),
            simpleAppBar(
              title: 'Facebook',
              leadingIcon: Icons.close,
            ),
            simpleAppBar(
              title: 'Google',
              leadingIcon: Icons.arrow_back,
              actionIcon: Icons.search,
            ),
            simpleAppBar(
              title: 'Apple',
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  AppBar myCustomAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      centerTitle: true,
      leading: Icon(
        Icons.arrow_back,
        color: kTertiaryColor,
      ),
      title: Text(
        'Facebook',
        style: TextStyle(
          fontSize: 24,
          color: Colors.blue,
        ),
      ),
      actions: [
        Icon(
          Icons.search,
          color: kTertiaryColor,
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }

  Container simpleAppBar({
    String title = '',
    IconData? leadingIcon,
    IconData? actionIcon,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: 56,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            leadingIcon,
            color: kTertiaryColor,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: kTertiaryColor,
            ),
          ),
          Icon(
            actionIcon,
            color: kTertiaryColor,
          ),
        ],
      ),
    );
  }
}
