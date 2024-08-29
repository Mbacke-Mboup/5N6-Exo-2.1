import 'package:flutter/material.dart';
import 'package:liste_nav/affichage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes:{
        "/": (context) => MyHomePage(),
        "/affichage": (context) {
            final arg = ModalRoute.of(context)!.settings.arguments as Truc;
            return Affichage(truc : arg);
        }
      }
    );
  }
}

class Truc {
  int id;
  String name;

  Truc(this.name, this.id);
}

class MyHomePage extends StatelessWidget {
  List<Truc> trucs = [
    Truc("Un machin", 1),
    Truc("Machin Truc", 2),
    Truc("Truc Machin", 3),
  ];

  MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,

        title: Text("Liste Nav"),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child:
            ListView.builder(
                itemCount: trucs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(trucs[index].name),
                    onTap: () {
                      Navigator.pushNamed(
                          context,
                          "/affichage",
                          arguments: trucs[index]
                      );
                    },
                  );
                }

            )
            )

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
