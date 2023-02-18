import 'package:flutter/material.dart';
import 'package:money_manager/constant.dart';
import 'package:money_manager/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const MaterialColor blue = const MaterialColor(
      0xFF2A31A4,
      const <int, Color>{
        50: const Color(0xFF2A31A4),
        100: const Color(0xFF2A31A4),
        200: const Color(0xFF2A31A4),
        300: const Color(0xFF2A31A4),
        400: const Color(0xFF2A31A4),
        500: const Color(0xFF2A31A4),
        600: const Color(0xFF2A31A4),
        700: const Color(0xFF2A31A4),
        800: const Color(0xFF2A31A4),
        900: const Color(0xFF2A31A4),
      },
    );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: blue,
      ),
      home: HomeScreen(),
    );
  }
}
