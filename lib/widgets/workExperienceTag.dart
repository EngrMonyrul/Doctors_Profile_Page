import 'package:flutter/material.dart';

Padding workExperienceTag(String text) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    ),
  );
}