import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  get _firstPart => Row(
    children: [
      Text(
          'Telegram X',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.normal,
          )
        )
    ],
  );

  get _secondPart => Row(
    children: [
      Icon(Icons.search)
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _firstPart,
        _secondPart
      ],
    );
  }
}