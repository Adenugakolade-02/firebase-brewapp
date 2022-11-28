import 'package:flutter/material.dart';

InputDecoration textInputDecoration = InputDecoration(
  fillColor: Colors.white.withOpacity(0.6),
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white.withOpacity(0.6),width: 2.0)
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.pink,width: 2.0)
  ),
  labelStyle: const TextStyle(color: Colors.pink)
);