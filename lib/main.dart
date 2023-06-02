import 'package:flutter/material.dart';
import 'package:wp_clone/widgets/chats_in.dart';
import 'package:wp_clone/widgets/settings_page.dart';

import 'Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Color(0xFF075E55)),
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
      ),
      routes: {
        "/": (context) => const HomePage(),
        "settingsPage": (context) => const settingsPage(),
        "chatsIn": (context) => const chatsIn()
      },
    );
  }
}
