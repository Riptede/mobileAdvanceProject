import 'package:flutter/material.dart';
import 'package:webmobile2/screens/article.dart';
import 'package:webmobile2/screens/home_screen.dart';
import 'package:webmobile2/screens/main_screens/settings_sceen.dart';
import 'package:webmobile2/screens/onboarding.dart';

import 'screens/login_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        '/Login': (context) => Login(),
        '/Onboarding': (context) => const Onboarding(),
        '/Home': (context) => const HomeScreen(),
        '/Article': (context) => const ArticleScreen(),
        '/Settings': (context) => const SettingsScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Web/Mobile2',
    );
  }
}
