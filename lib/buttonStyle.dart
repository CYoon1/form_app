import 'package:flutter/material.dart';

class IncreaseButton extends StatelessWidget {
  const IncreaseButton({
      super.key,
      required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red[600],
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                )
              ),
              onPressed: onPressed, 
              child: const Text('+'));
  }
}
class DecreaseButton extends StatelessWidget {
  const DecreaseButton({
      super.key,
      required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue[600],
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                )
              ),
              onPressed: onPressed,
              child: const Text('-'));
  }
}