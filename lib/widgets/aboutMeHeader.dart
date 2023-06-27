import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row aboutMeHeader() {
  return Row(
    children: [
      Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            image: AssetImage('assets/icons/man.png'),
          ),
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Container(
        child: const Text(
          'About Me',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      const Spacer(),
      CupertinoButton(
        onPressed: () {},
        child: Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              image:
                  DecorationImage(image: AssetImage('assets/icons/write.png'))),
        ),
      )
    ],
  );
}
