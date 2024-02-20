import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const title = 'Flutter TODO App';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          toolbarHeight: 120,
          centerTitle: true,
          title: const Column(
            children: [
              Text(
                HomePage.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32.0,
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'What\'s need to be done?',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 50,
                thickness: 2,
              )
            ],
          ),
        ),
        body: ListView(
          children: [Text('')],
        ));
  }
}
