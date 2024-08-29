import 'package:flutter/material.dart';

class Affichage extends StatelessWidget{
  const Affichage({super.key, required this.affichageText});
  final String affichageText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: const Text("Simple Nav"),
      ),
      body: Center(
        child: Text(affichageText),
      ),
    );
  }
  
}