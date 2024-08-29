import 'package:flutter/material.dart';
import 'package:liste_nav/main.dart';


class Affichage extends StatelessWidget {

  final Truc truc;

  Affichage({required this.truc});



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Liste Nav"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Name: ${truc.name}, Id: ${truc.id}'),

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}