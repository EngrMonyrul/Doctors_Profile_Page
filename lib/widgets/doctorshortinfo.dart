import 'package:flutter/material.dart';

Container doctorShortInfo(Map<String, dynamic> doctorDetails) {
  return Container(
    height: 75,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${doctorDetails['doctorName']}',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Text(
          '${doctorDetails['specialist']}',
        ),
        Center(
          child: Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.orange,
              ),
              Text(
                ' ${doctorDetails['reviewScore']}',
              ),
              Text(' (${doctorDetails['totalReview']} reviews)')
            ],
          ),
        ),
        Text(
          "${doctorDetails['location']} ${doctorDetails['tokenNum']} ${doctorDetails['posNum']}",
        )
      ],
    ),
  );
}
