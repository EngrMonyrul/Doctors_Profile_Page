import 'package:flutter/material.dart';

import 'designButtons.dart';

Positioned buttons(Size bodySize, BuildContext context) {
  return Positioned(
    top: 0,
    child: Center(
      child: Container(
        width: bodySize.width * 1.0,
        child: Padding(
          padding: EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              designButtons(context, 'backbutton'),
              designButtons(context, 'sharebutton'),
            ],
          ),
        ),
      ),
    ),
  );
}
