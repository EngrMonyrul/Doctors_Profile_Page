import 'package:flutter/material.dart';

Container doctorActivities() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    height: 50,
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Patients',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('13.5K'),
          ],
        ),
        Column(
          children: [
            Text(
              'Save Lives',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('21.5K'),
          ],
        ),
        Column(
          children: [
            Text(
              'Helped People',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('426.5K'),
          ],
        ),
        Column(
          children: [
            Text(
              'Thanks For',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('550.5K'),
          ],
        )
      ],
    ),
  );
}
