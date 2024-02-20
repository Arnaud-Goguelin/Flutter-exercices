import 'package:flutter/material.dart';

import 'task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const title = 'Flutter TODO App';
  static const catchPhrase = 'What\'s need to be done?';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _taskCounter = 0;

  final textFieldController = TextEditingController();
  late List<String> inputs = [];

  void _incrementTaskCounter() {
    setState(() {
      _taskCounter++;
    });
  }

  void textFieldSubmit() {
    inputs.add(textFieldController.text);
    _incrementTaskCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          toolbarHeight: 120,
          centerTitle: true,
          title: Column(
            children: [
              const Text(
                HomePage.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32.0,
                ),
              ),
              const SizedBox(height: 20),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: TextField(
                      decoration: const InputDecoration(
                          hintText: 'What\'s need to be done?'),
                      controller: textFieldController,
                      onSubmitted: (String value) {
                        textFieldSubmit();
                      })),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              for (var i = 0; i < _taskCounter; i++)
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Task(
                    taskString: inputs[i],
                  ),
                ),
            ],
          ),
        ));
  }
}
