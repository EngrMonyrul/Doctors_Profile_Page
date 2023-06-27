import 'package:flutter/material.dart';

import 'bgImage.dart';
import 'buttons.dart';
import 'doctorActivity.dart';

Stack upperEelements(Size bodySize, BuildContext context, String status) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      bgImage(bodySize),
      buttons(bodySize, context),
      doctorActivity(bodySize, status)
    ],
  );
}
