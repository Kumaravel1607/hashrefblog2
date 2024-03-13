import 'package:demoproject/Constant/color.dart';
import 'package:flutter/material.dart';

// class DropdownExample extends StatefulWidget {
//   const DropdownExample({Key? key}) : super(key: key);

//   @override
//   State<DropdownExample> createState() => _DropdownExamplwState();
// }

// class _DropdownExamplwState extends State<DropdownExample> {
//   var chosenValue;
//   List<String> List<String> languageList = ["Tamil","English","Hindi","Telugu"];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Blue,
//         title: Text("DropDown"),
//         titleSpacing: 2,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Container(
//                 padding: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.circular(10)),
//                 child: DropdownButton<String>(
//                   elevation: 1,
//                   underline: SizedBox(), // to remove underline
//                   isExpanded: true,
//                   hint: const Text("Select language"),
//                   iconSize: 30,
//                   iconEnabledColor: Colors.black,
//                   icon: const Icon(
//                     Icons.arrow_drop_down_sharp,
//                     size: 15,
//                   ),
//                   value: chosenValue,
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
//                   items: languageList
//                       .map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                   onChanged: (value) {
//                     setState(() {
//                       chosenValue = value;
//                     });
//                   },
//                   alignment: AlignmentDirectional.centerStart,
//                   iconDisabledColor: Colors.purple,
//                   dropdownColor: Colors.blueGrey,
//                   isDense: true,
//                   disabledHint: Container(
//                     color: Colors.deepOrange,
//                   ),
//                   selectedItemBuilder: (BuildContext context) {
//                     return languageList.map<Widget>((String item) {
//                       //This widget is shown after you select an item
//                       return Container(
//                         alignment: Alignment.centerLeft,
//                         constraints: const BoxConstraints(minWidth: 100),
//                         child: Text(
//                           item,
//                           style: const TextStyle(
//                               color: Colors.black, fontWeight: FontWeight.w600),
//                         ),
//                       );
//                     }).toList();
//                   },
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

//import 'package:flutter/material.dart';

class DropdownExample extends StatefulWidget {
  const DropdownExample({Key? key}) : super(key: key);

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  final formKey = GlobalKey<FormState>();
  var chosenValue;
  List<String> gameList = ["Handball", "Volleyball", "Football", "Badminton"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Blue,
        title: const Text("Dropdown with validation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
            child: Form(
              key: formKey,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.only(right: 10, left: 10),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(10)),
                ),
                elevation: 1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Select game';
                  } else {
                    return null;
                  }
                },
                isExpanded: true,
                hint: const Text("Favourite game"),
                iconSize: 30,
                iconEnabledColor: Colors.black,
                icon: const Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 15,
                ),
                value: chosenValue,
                items: gameList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    chosenValue = value;
                  });
                },
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                final isValid = formKey.currentState!.validate();
                if (!isValid) return;
              },
              child: const Text("Continue"))
        ],
      ),
    );
  }
}
