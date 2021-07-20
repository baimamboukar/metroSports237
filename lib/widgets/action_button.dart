import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  final Function callback;
  const ActionButton(
      {Key? key,
      required this.icon,
      required this.color,
      required this.label,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: color.withOpacity(0.35),
      side: BorderSide(color: color, width: 0.8),
      label: Text(label),
      avatar: Icon(icon, color: color),
    );
  }
}
