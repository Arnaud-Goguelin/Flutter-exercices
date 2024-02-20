import 'package:flutter/material.dart';

import 'increment_or_decrement_buttons.dart';

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
            IncrementOrDecrementButton(
              customCallBack: _incrementCounter,
              customIcon: Icons.add,
              customTooltip: 'Increment',
            ),
            const SizedBox(width: 15),
            IncrementOrDecrementButton(
                customCallBack: _decrementCounter,
                customIcon: Icons.remove,
                customTooltip: 'Decrement'),
          ],
        ),
      ],
    );
  }
}
