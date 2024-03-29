import 'package:demoproject/Constant/color.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final _selectedColor = Color(0xFF454549);
  final _unselectedColor = Color(0xff5f6368);
  final _tabs = [
    Tab(text: 'Tab1'),
    Tab(text: 'Tab2'),
    Tab(text: 'Tab3'),
  ];

  final _iconTabs = [
    Tab(icon: Icon(Icons.home)),
    Tab(icon: Icon(Icons.search)),
    Tab(icon: Icon(Icons.settings)),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Blue,
        title: Text("Custom Tab Bars"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ///Default Tabbar with full width tabbar indicator
            TabBar(
              controller: _tabController,
              tabs: _tabs,
              labelColor: _selectedColor,
              indicatorColor: _selectedColor,
              unselectedLabelColor: _unselectedColor,
            ),
            SizedBox(
              height: 20,
            ),

            ///Default Tabbar with indicator width of the label
            TabBar(
              controller: _tabController,
              tabs: _tabs,
              labelColor: _selectedColor,
              indicatorColor: _selectedColor,
              unselectedLabelColor: _unselectedColor,
              indicatorSize: TabBarIndicatorSize.label,
            ),
            SizedBox(
              height: 20,
            ),
            TabBar(
              controller: _tabController,
              tabs: _iconTabs,
              unselectedLabelColor: Colors.black,
              labelColor: _selectedColor,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(80.0),
                color: _selectedColor.withOpacity(0.2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TabBar(
              controller: _tabController,
              tabs: _tabs,
              unselectedLabelColor: Colors.black,
              labelColor: _selectedColor,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(80.0),
                color: _selectedColor.withOpacity(0.2),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            /// Custom Material Design tabbar used in google's products
            TabBar(
              controller: _tabController,
              labelColor: _selectedColor,
              unselectedLabelColor: _unselectedColor,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                color: _selectedColor,
              ),
              tabs: _tabs,
            ),
            SizedBox(
              height: 20,
            ),

            /// Custom Tabbar with solid selected bg and transparent tabbar bg
            Container(
              height: kToolbarHeight - 8.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: _selectedColor),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: _tabs,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            /// Custom Tabbar with solid selected bg and transparent tabbar bg
            Container(
              height: kToolbarHeight + 8.0,
              padding:
                  const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
              decoration: BoxDecoration(
                color: _selectedColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0)),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0)),
                    color: Colors.white),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                tabs: _tabs,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            /// Custom Tabbar with transparent selected bg and solid selected text
          ]
              .map((item) => Column(
                    /// Added a divider after each item to let the tabbars have room to breathe
                    children: [
                      item,
                      Divider(
                        color: Colors.transparent,
                      )
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
