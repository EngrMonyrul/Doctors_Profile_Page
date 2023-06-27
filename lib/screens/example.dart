import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> tabItems = ['Tab 1', 'Tab 2', 'Tab 3', 'Tab 4'];

  @override
  void initState() {
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
    print(_tabController);
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Tab Bar'),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tabItems.length,
              itemBuilder: (context, index) {
                final isSelected = _tabController.index == index;
                //print(isSelected);
                return GestureDetector(
                  onTap: () {
                    _tabController.animateTo(index);
                    setState(() {

                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    color: isSelected ? Colors.blue : Colors.transparent,
                    child: Center(
                      child: Text(
                        tabItems[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: List<Widget>.generate(tabItems.length, (index) {
                return Center(
                  child: Text('Content of ${tabItems[index]}'),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
