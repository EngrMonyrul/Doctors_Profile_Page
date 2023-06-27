import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding workExperienceSection() {
  return Padding(
    padding: const EdgeInsets.only(
        top: 20, bottom: 20, left: 40, right: 40),
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
                          image: AssetImage('assets/icons/tools.png'),
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
            Container(
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                            AssetImage('assets/icons/sick.png'),
                            fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Allergy and Immunology',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                            AssetImage('assets/icons/heart.png'),
                            fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Cardiology',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}