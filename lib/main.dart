// // import 'package:demoproject/credit.dart';
// // import 'package:demoproject/list.dart';
// // import 'package:demoproject/search.dart';
// // import 'package:demoproject/vertical.dart';

// import 'package:demoproject/Calendar.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           fontFamily: 'Poppins',
//           primarySwatch: Colors.blue,
//         ),
//         //home: ListPage(),
//         //home: VerticalCard()
//         home: DatePickerCustom());
//   }
// }

// // // import 'package:demoproject/Constant/color.dart';
// // // import 'package:flutter/material.dart';

// // // void main() {
// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       debugShowCheckedModeBanner: false,
// // //       title: 'Flutter Demo',
// // //       theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
// // //       home: SimpleAnimatedList(),
// // //     );
// // //   }
// // // }

// // // class SimpleAnimatedList extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: white,
// // //       body: SliceAnimatedList(),
// // //     );
// // //   }
// // // }

// // // class SliceAnimatedList extends StatefulWidget {
// // //   @override
// // //   _SliceAnimatedListState createState() => _SliceAnimatedListState();
// // // }

// // // class _SliceAnimatedListState extends State<SliceAnimatedList> {
// // //   final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
// // //   List<int> _items = [];
// // //   int counter = 0;

// // //   Widget slideIt(BuildContext context, int index, animation) {
// // //     int item = _items[index];

// // //     return SlideTransition(
// // //       position: Tween<Offset>(
// // //         begin: const Offset(-1, 0),
// // //         end: Offset(0, 0),
// // //       ).animate(animation),
// // //       child: SizedBox(
// // //         height: 128.0,
// // //         child: Card(
// // //           color: Colors.primaries[item % Colors.primaries.length],
// // //           child: Center(
// // //             child: Text(
// // //               'Item $item',
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Column(
// // //       mainAxisSize: MainAxisSize.max,
// // //       children: <Widget>[
// // //         Expanded(
// // //           child: Container(
// // //             height: double.infinity,
// // //             child: AnimatedList(
// // //               key: listKey,
// // //               initialItemCount: _items.length,
// // //               itemBuilder: (context, index, animation) {
// // //                 return slideIt(context, index, animation);
// // //               },
// // //             ),
// // //           ),
// // //         ),
// // //         Container(
// // //           decoration: BoxDecoration(color: Blue),
// // //           child: Row(
// // //             mainAxisSize: MainAxisSize.max,
// // //             crossAxisAlignment: CrossAxisAlignment.center,
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: <Widget>[
// // //               ElevatedButton(
// // //                 onPressed: () {
// // //                   setState(() {
// // //                     listKey.currentState!.insertItem(0,
// // //                         duration: const Duration(milliseconds: 500));
// // //                     _items = []
// // //                       ..add(counter++)
// // //                       ..addAll(_items);
// // //                   });
// // //                 },
// // //                 child: Text(
// // //                   "Add item",
// // //                   style: TextStyle(color: Colors.black, fontSize: 20),
// // //                 ),
// // //               ),
// // //               SizedBox(
// // //                 width: 20,
// // //               ),
// // //               ElevatedButton(
// // //                 onPressed: () {
// // //                   if (_items.length <= 1) return;
// // //                   listKey.currentState!.removeItem(
// // //                       0, (_, animation) => slideIt(context, 0, animation),
// // //                       duration: const Duration(milliseconds: 500));
// // //                   setState(() {
// // //                     _items.removeAt(0);
// // //                   });
// // //                 },
// // //                 child: Text(
// // //                   "Remove item",
// // //                   style: TextStyle(color: Colors.black, fontSize: 20),
// // //                 ),
// // //               )
// // //             ],
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:expansion_tile_card/expansion_tile_card.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'ExpansionTileCard ',
// //       theme: ThemeData(
// //         primarySwatch: Colors.purple,
// //       ),
// //       home: MyHomePage(title: 'ExpansionTileCard '),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   MyHomePage({Key? key, this.title}) : super(key: key);

// //   final String? title;

// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
// //   final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();

// //   @override
// //   Widget build(BuildContext context) {
// //     final ButtonStyle TextButtonStyle = TextButton.styleFrom(
// //       shape: const RoundedRectangleBorder(
// //         borderRadius: BorderRadius.all(Radius.circular(4.0)),
// //       ),
// //     );

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(widget.title!),
// //       ),
// //       body: ListView(
// //         children: <Widget>[
// //           Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 12.0),
// //             child: ExpansionTileCard(
// //               key: cardA,
// //               leading: CircleAvatar(child: Text('A')),
// //               title: Text(
// //                 'Tap me!',
// //                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //               ),
// //               subtitle: Text(
// //                 'I expand!',
// //                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
// //               ),
// //               children: <Widget>[
// //                 Divider(
// //                   thickness: 1.0,
// //                   height: 1.0,
// //                 ),
// //                 Align(
// //                   alignment: Alignment.centerLeft,
// //                   child: Padding(
// //                     padding: const EdgeInsets.symmetric(
// //                       horizontal: 16.0,
// //                       vertical: 8.0,
// //                     ),
// //                     child: Text(
// //                       """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.

// // Use me any time you think your app could benefit from being just a bit more Material.

// // These buttons control the next card down!""",
// //                       style: Theme.of(context)
// //                           .textTheme
// //                           .bodyText2!
// //                           .copyWith(fontSize: 16),
// //                     ),
// //                   ),
// //                 ),
// //                 ButtonBar(
// //                   alignment: MainAxisAlignment.spaceAround,
// //                   buttonHeight: 52.0,
// //                   buttonMinWidth: 90.0,
// //                   children: <Widget>[
// //                     TextButton(
// //                       style: TextButtonStyle,
// //                       onPressed: () {
// //                         cardB.currentState?.expand();
// //                       },
// //                       child: Column(
// //                         children: <Widget>[
// //                           Icon(Icons.arrow_downward),
// //                           Padding(
// //                             padding: const EdgeInsets.symmetric(vertical: 2.0),
// //                           ),
// //                           Text('Open'),
// //                         ],
// //                       ),
// //                     ),
// //                     TextButton(
// //                       style: TextButtonStyle,
// //                       onPressed: () {
// //                         cardB.currentState?.collapse();
// //                       },
// //                       child: Column(
// //                         children: <Widget>[
// //                           Icon(Icons.arrow_upward),
// //                           Padding(
// //                             padding: const EdgeInsets.symmetric(vertical: 2.0),
// //                           ),
// //                           Text('Close'),
// //                         ],
// //                       ),
// //                     ),
// //                     TextButton(
// //                       style: TextButtonStyle,
// //                       onPressed: () {
// //                         cardB.currentState?.toggleExpansion();
// //                       },
// //                       child: Column(
// //                         children: <Widget>[
// //                           Icon(Icons.swap_vert),
// //                           Padding(
// //                             padding: const EdgeInsets.symmetric(vertical: 2.0),
// //                           ),
// //                           Text('Toggle'),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 12.0),
// //             child: ExpansionTileCard(
// //               key: cardB,
// //               expandedTextColor: Colors.red,
// //               leading: CircleAvatar(child: Text('B')),
// //               title: Text(
// //                 'Tap me!',
// //                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //               ),
// //               subtitle: Text(
// //                 'I expand, too!',
// //                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
// //               ),
// //               children: <Widget>[
// //                 Divider(
// //                   thickness: 1.0,
// //                   height: 1.0,
// //                 ),
// //                 Align(
// //                   alignment: Alignment.centerLeft,
// //                   child: Padding(
// //                     padding: const EdgeInsets.symmetric(
// //                       horizontal: 16.0,
// //                       vertical: 8.0,
// //                     ),
// //                     child: Text(
// //                       """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.

// // Use me any time you think your app could benefit from being just a bit more Material.

// // These buttons control the card above!""",
// //                       style: Theme.of(context)
// //                           .textTheme
// //                           .bodyText2!
// //                           .copyWith(fontSize: 16),
// //                     ),
// //                   ),
// //                 ),
// //                 ButtonBar(
// //                   alignment: MainAxisAlignment.spaceAround,
// //                   buttonHeight: 52.0,
// //                   buttonMinWidth: 90.0,
// //                   children: <Widget>[
// //                     TextButton(
// //                       style: TextButtonStyle,
// //                       onPressed: () {
// //                         cardA.currentState?.expand();
// //                       },
// //                       child: Column(
// //                         children: <Widget>[
// //                           Icon(Icons.arrow_downward),
// //                           Padding(
// //                             padding: const EdgeInsets.symmetric(vertical: 2.0),
// //                           ),
// //                           Text('Open'),
// //                         ],
// //                       ),
// //                     ),
// //                     TextButton(
// //                       style: TextButtonStyle,
// //                       onPressed: () {
// //                         cardA.currentState?.collapse();
// //                       },
// //                       child: Column(
// //                         children: <Widget>[
// //                           Icon(Icons.arrow_upward),
// //                           Padding(
// //                             padding: const EdgeInsets.symmetric(vertical: 2.0),
// //                           ),
// //                           Text('Close'),
// //                         ],
// //                       ),
// //                     ),
// //                     TextButton(
// //                       style: TextButtonStyle,
// //                       onPressed: () {
// //                         cardA.currentState?.toggleExpansion();
// //                       },
// //                       child: Column(
// //                         children: <Widget>[
// //                           Icon(Icons.swap_vert),
// //                           Padding(
// //                             padding: const EdgeInsets.symmetric(vertical: 2.0),
// //                           ),
// //                           Text('Toggle'),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

//import 'package:demoproject/Calendar.dart';
import 'package:demoproject/Calendar.dart';
import 'package:demoproject/dialog.dart';
import 'package:demoproject/expand.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
//import '/basics_example.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TableCalendar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiChoiceDialog(),
      //home: SingleChoiceDialog()
    );
  }
}

// class StartPage extends StatefulWidget {
//   @override
//   _StartPageState createState() => _StartPageState();
// }

// class _StartPageState extends State {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TableCalendar'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(height: 20.0),
//             ElevatedButton(
//               child: Text('Open Calendar'),
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => TableBasicsExample()),
//               ),
//             ),
//             const SizedBox(height: 20.0),
//           ],
//         ),
//       ),
//     );
//   }
// }
