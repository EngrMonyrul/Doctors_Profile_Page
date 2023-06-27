import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'aboutMeHeader.dart';

class TabBarItems extends StatefulWidget {
  const TabBarItems({super.key});

  @override
  State<TabBarItems> createState() => _TabBarItemsState();
}

class _TabBarItemsState extends State<TabBarItems>
    with SingleTickerProviderStateMixin {
  List<String> tabItems = ['About', 'Reviews My Services'];
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabItems.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          tabBar(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Basic Information',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 210,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(-2, 2),
                            blurRadius: 2,
                            spreadRadius: 2,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, bottom: 15, left: 23, right: 23),
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                aboutMeHeader(),
                                Container(
                                  child: const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Mr. Martin is a highly respected and accomplished senior doctor who has dedicated his career to the field of medicine. With a wealth of knowledge and experience, he has become a trusted figure in the medical community. Throughout his....'
                                        ),
                                        TextSpan(
                                          text: 'Read More',
                                          style: TextStyle(
                                            color: Colors.blue
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: const Text(
                              'On Construction',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container tabBar() {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabItems.length,
        itemBuilder: (context, index) {
          // ignore: unrelated_type_equality_checks
          final selectedItem = _tabController.index == index;
          return GestureDetector(
            onTap: () {
              _tabController.animateTo(index);
              setState(() {});
            },
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Text(
                      '${tabItems[index]}',
                      style: TextStyle(
                        fontWeight: selectedItem ? FontWeight.bold : null,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  width: 10,
                  color: selectedItem ? Colors.black : Colors.transparent,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
