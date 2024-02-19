import 'package:flutter/material.dart';

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

class CounterRow extends StatefulWidget {
  const CounterRow({super.key});

  @override
  State<CounterRow> createState() => _CounterRowState();
}

class _CounterRowState extends State<CounterRow> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Row(
          children: [
            IncrementButton(onPressed: _incrementCounter),
            const SizedBox(width: 15),
            DecrementButton(onPressed: _decrementCounter),
          ],
        ),
      ],
    );
  }
}

class IncrementButton extends StatelessWidget {
  const IncrementButton({super.key, required this.onPressed});
  // Mémo perso: VoidCallback permet de passer une méthode en argument,
  // on peut ainsi appeler une méthode depuis une autre class
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).colorScheme.surfaceTint,
      shape: const CircleBorder(),
      onPressed: onPressed,
      tooltip: 'Increment',
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}

class DecrementButton extends StatelessWidget {
  const DecrementButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).colorScheme.surfaceTint,
      shape: const CircleBorder(),
      onPressed: onPressed,
      tooltip: 'Decrement',
      child: const Icon(
        Icons.remove,
        color: Colors.white,
      ),
    );
  }
}
