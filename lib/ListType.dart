// import 'package:demoproject/Constant/color.dart';
// import 'package:flutter/material.dart';

// class ListType extends StatefulWidget {
//   ListType({Key? key}) : super(key: key);

//   @override
//   State<ListType> createState() => _ListTypeState();
// }

// class _ListTypeState extends State<ListType> {
//   List<String> items = ['Item 4', 'Item 5', 'Item 6'];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Blue,
//         title: Center(
//             child: Text(
//           "ListView Type",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         )),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             // SizedBox(
//             //   child: ListView(
//             //     shrinkWrap: true,
//             //     children: <Widget>[
//             //       ListTile(title: Text('Item 1')),
//             //       ListTile(title: Text('Item 2')),
//             //       ListTile(title: Text('Item 3')),
//             //       // Add more items as needed
//             //     ],
//             //   ),
//             // ),
//             // SizedBox(
//             //   child: ListView.separated(
//             //     shrinkWrap: true,
//             //     itemCount: items.length,
//             //     separatorBuilder: (context, index) => Divider(),
//             //     itemBuilder: (context, index) {
//             //       return ListTile(title: Text(items[index]));
//             //     },
//             //   ),
//             // ),
//             // SizedBox(
//             //     child: ListView.builder(
//             //   shrinkWrap: true,
//             //   itemCount: items.length,
//             //   itemBuilder: (context, index) {
//             //     return ListTile(title: Text(items[index]));
//             //   },
//             // )),
//             // SizedBox(
//             //   child: ListView.custom(
//             //     shrinkWrap: true,
//             //     childrenDelegate: SliverChildBuilderDelegate(
//             //       (context, index) {
//             //         return ListTile(title: Text(items[index]));
//             //       },
//             //       childCount: items.length,
//             //     ),
//             //   ),
//             // ),
//             Expanded(
//               child: ListView(

//                 scrollDirection: Axis.horizontal,
//                 children: <Widget>[
//                   SizedBox(width: 100, child: ListTile(title: Text('Item 1'))),
//                   SizedBox(width: 100, child: ListTile(title: Text('Item 2'))),
//                   SizedBox(width: 100, child: ListTile(title: Text('Item 3'))),
//                   // Add more items as needed
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:demoproject/Constant/color.dart';
import 'package:flutter/material.dart';

class ListType extends StatefulWidget {
  ListType({Key? key}) : super(key: key);

  @override
  State<ListType> createState() => _ListTypeState();
}

enum Gender { male, female }

Gender? _gender = Gender.male;

class Appliance {
  String name;
  bool isOn;
  Appliance(this.name, {this.isOn = false});
}

final List<Appliance> appliances = [
  Appliance('TV'),
  Appliance('Fan'),
  Appliance('Refrigerator'),
];

class Language {
  String name;
  bool isChecked;
  Language(this.name, {this.isChecked = false});
}

final List<Language> languages = [
  Language('Tamil'),
  Language('English'),
  Language('Malayalam')
];

class _ListTypeState extends State<ListType> {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Blue,
          title: Center(
              child: Text(
            "ListView Type",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                // SizedBox(
                //   child: ListView(
                //     shrinkWrap: true,
                //     children: <Widget>[
                //       ListTile(title: Text('Item 1')),
                //       ListTile(title: Text('Item 2')),
                //       ListTile(title: Text('Item 3')),
                //       // Add more items as needed
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   child: ListView.separated(
                //     shrinkWrap: true,
                //     itemCount: 5,
                //     separatorBuilder: (context, index) => Divider(),
                //     itemBuilder: (context, index) {
                //       return ListTile(title: Text(items[index]));
                //     },
                //   ),
                // ),
                // SizedBox(
                //     child: ListView.builder(
                //   shrinkWrap: true,
                //   itemCount: items.length,
                //   itemBuilder: (context, index) {
                //     return ListTile(title: Text(items[index]));
                //   },
                // )),
                // SizedBox(
                //   child: ListView.custom(
                //     shrinkWrap: true,
                //     childrenDelegate: SliverChildBuilderDelegate(
                //       (context, index) {
                //         return ListTile(title: Text(items[index]));
                //       },
                //       childCount: 6,
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: ListView(
                //     shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //     children: <Widget>[
                //       SizedBox(
                //           width: 100, child: ListTile(title: Text('Item 1'))),
                //       SizedBox(
                //           width: 100, child: ListTile(title: Text('Item 2'))),
                //       SizedBox(
                //           width: 100, child: ListTile(title: Text('Item 3'))),
                //       // Add more items as needed
                //     ],
                //   ),
                // ),
                // ListView(
                //   shrinkWrap: true,
                //   scrollDirection: Axis.horizontal,
                //   children: <Widget>[
                //     SizedBox(width: 50, child: ListTile(title: Text('Item 1'))),
                //     SizedBox(width: 50, child: ListTile(title: Text('Item 2'))),
                //     SizedBox(width: 50, child: ListTile(title: Text('Item 3'))),
                //     // Add more items as needed
                //   ],
                // ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      // scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: const [
                        ListTile(
                          leading: Icon(Icons.car_rental_rounded),
                          title: Text('Car'),
                          trailing: Icon(Icons.more_vert),
                        ),
                        ListTile(
                          leading: Icon(Icons.flight),
                          title: Text('Flight'),
                          trailing: Icon(Icons.more_vert),
                        ),
                        ListTile(
                          leading: Icon(Icons.train),
                          title: Text('Train'),
                          trailing: Icon(Icons.more_vert),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        RadioListTile<Gender>(
                          secondary: Icon(Icons.male),
                          controlAffinity: ListTileControlAffinity.trailing,
                          title: const Text('Male'),
                          value: Gender.male,
                          groupValue: _gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                        RadioListTile<Gender>(
                          secondary: Icon(Icons.female),
                          controlAffinity: ListTileControlAffinity.trailing,
                          title: const Text('Female'),
                          value: Gender.female,
                          groupValue: _gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: appliances.length,
                      itemBuilder: (context, index) {
                        return SwitchListTile(
                          title: Text('${appliances[index].name}'),
                          value: appliances[index].isOn,
                          onChanged: (bool value) {
                            setState(() {
                              appliances[index].isOn = value;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: languages.length,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          //  controlAffinity: ListTileControlAffinity.leading,
                          title: Text('${languages[index].name}'),
                          value: languages[index].isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              languages[index].isChecked = value!;
                            });
                          },
                          secondary: const Icon(Icons.language),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
