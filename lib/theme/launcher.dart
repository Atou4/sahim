

import 'package:flutter/material.dart';
import 'package:sahim/screens/home/home_page.dart';

import 'theme_provider.dart';


class Launcher extends StatelessWidget {
  const Launcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: OrderTheme.lightTheme,
      darkTheme: OrderTheme.darkTheme,
      themeMode:ThemeMode.system ,
      home:  const HomePage(),
    );
  }
}
