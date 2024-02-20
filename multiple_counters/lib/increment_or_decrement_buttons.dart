import 'package:flutter/material.dart';

class IncrementOrDecrementButton extends StatelessWidget {
  const IncrementOrDecrementButton(
      {super.key,
      required this.customCallBack,
      required this.customIcon,
      required this.customTooltip});
  // Mémo perso: VoidCallback permet de passer une méthode en argument,
  // on peut ainsi appeler une méthode depuis une autre class
  final VoidCallback customCallBack;
  final IconData customIcon;
  final String customTooltip;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).colorScheme.surfaceTint,
      shape: const CircleBorder(),
      onPressed: customCallBack,
      tooltip: customTooltip,
      child: Icon(
        customIcon,
        color: Colors.white,
      ),
    );
  }
}
