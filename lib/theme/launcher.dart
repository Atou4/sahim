import 'package:flutter/material.dart';
import 'package:sahim/screens/bottom_nav.dart';

import 'theme_provider.dart';


class Launcher extends StatelessWidget {
  const Launcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: SahimTheme.lightTheme,
      darkTheme: SahimTheme.darkTheme,
      themeMode:ThemeMode.system ,
      home: const Directionality(
        textDirection: TextDirection.rtl,

        child:  BottomNav()),

    );
  }
}
