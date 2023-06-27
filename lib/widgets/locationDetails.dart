import 'package:design_2/widgets/sliderImages.dart';
import 'package:flutter/material.dart';

Padding locationDetails() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40.0),
    child: Container(
      height: 545,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 2,
            spreadRadius: 2,
            offset: const Offset(-2, 2),
          )
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          const sliderImage(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '102 Center Boulevard Suite B\nSaint Albans, NY 11412',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('assets/icons/call.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '481-766-6767',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Accepted Insurance Plan',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '\nAetna'),
                  TextSpan(text: '\nAmeri Health'),
                  TextSpan(text: '\nBlueCross BlueShield'),
                  TextSpan(text: '\nCigna')
                ]))
              ],
            ),
          )
        ],
      ),
    ),
  );
}
