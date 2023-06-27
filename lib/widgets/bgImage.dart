import 'package:flutter/material.dart';

Container bgImage(Size bodySize) {
  return Container(
    //alignment: Alignment.center,
    height: bodySize.height * 0.4,
    width: bodySize.width * 1.0,
    child: Image.asset(
      'assets/images/bg2.webp',
      fit: BoxFit.cover,
    ),
  );
}
