import 'package:flutter/material.dart';
import 'doctorOnlineActivity.dart';
import 'doctorshortinfo.dart';

Row doctorStatus(String status) {
  Map<String, dynamic> doctorDetails = {
    'doctorName': 'Dr. Martin Wallace',
    'specialist': 'Allergy and Immunology',
    'reviewScore': 4.8,
    'totalReview': 1387,
    'location': 'Temple Hills',
    'posNum': 20748,
    'tokenNum': 'MD'
  };
  return Row(
    children: [
      doctorOnlineActivity(status),
      const SizedBox(
        width: 20,
      ),
      doctorShortInfo(doctorDetails)
    ],
  );
}
