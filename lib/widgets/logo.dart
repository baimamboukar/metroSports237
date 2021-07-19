import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        "Metro",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22.0,
          color: Colors.green,
        ),
      ),
      Text(
        "Sports",
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.red,
        ),
      ),
      Text(
        "237",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22.0,
          color: Colors.amber,
        ),
      )
    ]);
  }
}
