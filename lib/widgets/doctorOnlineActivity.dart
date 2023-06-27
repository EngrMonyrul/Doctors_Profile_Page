import 'package:flutter/material.dart';

Stack doctorOnlineActivity(String status) {
  return Stack(
    children: [
      Container(
        alignment: Alignment.center,
        height: 80,
        width: 80,
        child: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            image: DecorationImage(
                image: AssetImage('assets/images/doc.jpg'), fit: BoxFit.fill),
          ),
        ),
      ),
      Positioned(
        top: 2,
        right: 3,
        child: CircleAvatar(
          radius: 7,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 5,
            backgroundColor: status == 'active' ? Colors.green : Colors.red,
          ),
        ),
      )
    ],
  );
}
