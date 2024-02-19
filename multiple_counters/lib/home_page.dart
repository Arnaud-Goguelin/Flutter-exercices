import 'package:flutter/material.dart';

import 'counter_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counterRow = 1;

  void _addCounterRow() {
    setState(() {
      _counterRow++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceTint,
        title: Center(
          child: Text(widget.title,
              style: const TextStyle(
                color: Colors.white,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          children: [
            for (var i = 0; i < _counterRow; i++)
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: CounterRow(),
              ),
            const SizedBox(height: 50),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Theme.of(context).colorScheme.surfaceTint,
                shape: const CircleBorder(),
                onPressed: _addCounterRow,
                tooltip: 'Increment',
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
