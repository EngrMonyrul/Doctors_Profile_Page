import 'package:flutter/material.dart';

import 'doctorPopularity.dart';
import 'doctorStatus.dart';

Positioned doctorActivity(Size bodySize, String status) {
  return Positioned(
    bottom: -150,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 210,
        width: bodySize.width * 0.92,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 2,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              doctorStatus(status),
              const SizedBox(
                height: 40,
              ),
              doctorActivities()
            ],
          ),
        ),
      ),
    ),
  );
}
