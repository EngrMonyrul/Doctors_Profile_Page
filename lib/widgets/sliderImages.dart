import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';

class sliderImage extends StatefulWidget {
  const sliderImage({super.key});

  @override
  State<sliderImage> createState() => _sliderImageState();
}

class _sliderImageState extends State<sliderImage> {
  List sliderImages = [
    {'id': 1, 'image_path': 'assets/images/maps.webp'},
    {'id': 2, 'image_path': 'assets/images/nothing.png'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              InkWell(
                child: CarouselSlider(
                  items: sliderImages
                      .map(
                        (e) => Container(
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  e['image_path'],
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: false,
                      aspectRatio: 1.7,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      }),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Positioned(
              top: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: sliderImages.asMap().entries.map(
                  (e) {
                    return GestureDetector(
                        onTap: () {
                          carouselController.animateToPage(e.key);
                          setState(() {});
                        },
                        child: Container(
                          height: currentIndex == e.key ? 12 : 8,
                          width: currentIndex == e.key ? 12 : 8,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == e.key
                                  ? Colors.black
                                  : Colors.white,
                              border: Border.all(
                                  color: currentIndex == e.key
                                      ? Colors.white
                                      : Colors.black)),
                        ));
                  },
                ).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
