import 'package:flutter/material.dart';

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
