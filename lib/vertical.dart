import 'package:demoproject/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class VerticalCard extends StatefulWidget {
  @override
  _VerticalCardState createState() => _VerticalCardState();
}

class _VerticalCardState extends State<VerticalCard> {
  final List<String> titles = [
    "DHONI",
    "SACHIN",
    "KHOLI",
    "ROHIT",
    "JADDU",
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Blue,
        title: Text(
          'Vertical Card Pager',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: VerticalCardPager(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              titles: titles,
              images: images,
              onPageChanged: (page) {},
              align: ALIGN.CENTER,
              onSelectedItem: (index) {},
            ),
          ),
        ),
      ),
    );
  }
}
