import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding experienceArea() {
  return Padding(
    padding: const EdgeInsets.only(
        top: 5, bottom: 5, left: 40, right: 40),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 2,
                spreadRadius: 2,
                offset: const Offset(-2, 2)),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/medical.png'),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Spacialities',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                CupertinoButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          color: Colors.blueAccent,
                        ),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/write.png'),
                                      fit: BoxFit.fill)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Verify Required',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 12),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            experienceDetails('I am licensed to see patients from', 'New York'),
            const SizedBox(
              height: 10,
            ),
            experienceDetails('Work experience', '23 Years'),
            const SizedBox(
              height: 10,
            ),
            experienceDetails('Languages', 'English, Spanish, French'),
          ],
        ),
      ),
    ),
  );
}

Container experienceDetails(String text1, String text2) {
  return Container(
            alignment: Alignment.centerLeft,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: text1+'\n',
                  ),
                  TextSpan(
                    text: text2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    )
                  )
                ]
              )
            ),
          );
}