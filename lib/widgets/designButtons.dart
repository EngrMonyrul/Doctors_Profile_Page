import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

Container designButtons(BuildContext context, String iconName) {
  return Container(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: CupertinoButton(
                  onPressed: () {
                    iconName == 'backbutton'
                        ? Navigator.pop(context)
                        : Share.share('design_2');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: iconName == 'backbutton'
                        ? const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
