import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton UpdateProfileEdit() {
  return CupertinoButton(
    onPressed: () {},
    child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        width: 250,
        decoration: const BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              child: Image.asset('assets/icons/write.png'),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 40,
              child: const Text(
                'Update Work Profile',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        )),
  );
}
