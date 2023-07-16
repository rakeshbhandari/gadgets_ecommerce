import 'package:flutter/material.dart';

chipWidgets(String label) {
  return Chip(
    label: Text(label),
    elevation: 15,
    padding: const EdgeInsets.all(8),
    backgroundColor: Colors.grey[300],
    // shadowColor: Colors.black,
  );
}
