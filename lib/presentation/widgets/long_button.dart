import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  const LongButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.color,
      this.textColor});

  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    // return button
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
          width: MediaQuery.of(context).size.width, height: 50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: color ?? Theme.of(context).colorScheme.primary,
          // textStyle: TextStyle(color: textColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
