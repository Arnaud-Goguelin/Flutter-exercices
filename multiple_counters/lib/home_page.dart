import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceTint,
        title: Center(
          child: Text(title,
              style: const TextStyle(
                color: Colors.white,
              )),
        ),
      ),
      body: ListView(
        children: [
          CounterRow(),
        ],
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
            const SizedBox(
              width: 15,
            ),
            DecrementButton(onPressed: _decrementCounter),
          ],
        ),
      ],
      // Affiche le counter /Le bouton d'incrément / le bouton de décrément.
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
      shape: const CircleBorder(),
      onPressed: onPressed,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}

class DecrementButton extends StatelessWidget {
  const DecrementButton({super.key, required this.onPressed});
  // Mémo perso: VoidCallback permet de passer une méthode en argument,
  // on peut ainsi appeler une méthode depuis une autre class
  // usage de mixin autrement mais comment faire le lien avec la variable _count depuis une mixin?.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: 'Decrement',
      child: const Icon(Icons.remove),
    );
  }
}
