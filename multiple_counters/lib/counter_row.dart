import 'package:flutter/material.dart';

import 'increment_decrement_buttons.dart';

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
