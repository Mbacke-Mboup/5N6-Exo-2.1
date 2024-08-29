import 'package:flutter/material.dart';

import 'affichage.dart';
import 'myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: "Simple Nav"),
      initialRoute: '/home',
      routes: {
        "/home": (context) => MyHomePage(title: "Simple Nav"),
        "/affichage": (context) {
          final arg = ModalRoute.of(context)!.settings.arguments as String;
          return Affichage(affichageText: arg);
        }

      },

    );
  }
}

