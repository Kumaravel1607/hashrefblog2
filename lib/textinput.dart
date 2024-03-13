import 'package:demoproject/Constant/color.dart';
import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  TextInput({Key? key}) : super(key: key);

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool isloading = false;
  bool _passVisibility = true;
  bool isEmailCorrect = false;
  bool isEmailCorrect1 = false;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController email1 = TextEditingController();
  TextEditingController email2 = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Blue,
          title: Center(
              child: Text(
            "Input box Design",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
            margin: EdgeInsets.only(top: 100),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your username',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 45,
                    width: 380,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'User Name',
                        hintText: 'Enter Your Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: name,
                    keyboardType: TextInputType.text,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter fullname";
                      }
                      return null;
                    },
                    onSaved: (name) {
                      name = name!;
                    },
                    style: TextStyle(
                        color: black,
                        fontFamily: 'Rubik',
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: grey),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Blue, width: 2.5),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Blue, width: 2)),
                      contentPadding: const EdgeInsets.only(left: 20),
                      hintText: 'Enter Full name',
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter username";
                      }

                      return null;
                    },
                    controller: email,
                    autocorrect: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Blue, width: 2)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: box),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Blue, width: 2),
                        ),
                        contentPadding: const EdgeInsets.only(
                            left: 24, top: 14, bottom: 13),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your mail",
                        hintStyle: const TextStyle(
                            color: grey, fontFamily: 'Rubik', fontSize: 14),
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Blue,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter email";
                      }

                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        isEmailCorrect = !(!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value));
                      });
                    },
                    controller: email1,
                    autocorrect: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Blue, width: 2)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: box),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: isEmailCorrect == false ? red : Blue,
                              width: 2),
                        ),
                        contentPadding: const EdgeInsets.only(
                            left: 24, top: 14, bottom: 13),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your email",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Blue,
                        ),
                        suffixIcon: isEmailCorrect == false
                            ? Icon(
                                Icons.close_sharp,
                                color: red,
                              )
                            : Icon(
                                Icons.done,
                                color: green,
                              )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter email";
                      }

                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        isEmailCorrect1 = !(!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value));
                      });
                    },
                    controller: email2,
                    autocorrect: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Blue, width: 2)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: box),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: isEmailCorrect1 == false ? red : green,
                              width: 2),
                        ),
                        contentPadding: const EdgeInsets.only(
                            left: 24, top: 14, bottom: 13),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your email",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Blue,
                        ),
                        suffixIcon: isEmailCorrect1 == false
                            ? Icon(
                                Icons.close_sharp,
                                color: red,
                              )
                            : Icon(
                                Icons.done,
                                color: green,
                              )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter password";
                      }

                      return null;
                    },
                    controller: pass,
                    autocorrect: true,
                    obscureText: _passVisibility,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: red, width: 2)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: box),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Blue, width: 2),
                        ),
                        contentPadding: const EdgeInsets.only(
                            left: 24, top: 14, bottom: 13),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Enter your password',
                        hintStyle: const TextStyle(
                            fontFamily: 'Rubik', color: grey, fontSize: 14),
                        suffixIcon: IconButton(
                          color: grey,
                          icon: _passVisibility
                              ? Icon(
                                  Icons.visibility_off,
                                  color: LiteBlue,
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Blue,
                                ),
                          onPressed: () {
                            _passVisibility = !_passVisibility;
                            setState(() {});
                          },
                        ),
                        prefixIcon: Icon(
                          Icons.lock_rounded,
                          color: Blue,
                        )),
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: SizedBox(
                      //width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Blue,
                          minimumSize: const Size.fromHeight(44),
                        ),
                        onPressed: () {
                          setState(() {
                            if (formkey.currentState!.validate()) {
                              isloading = true;
                              print(isloading);
                            }
                          });
                        },
                        child: isloading == true
                            ? Container(
                                width: 24,
                                height: 24,
                                padding: const EdgeInsets.all(2.0),
                                child: const CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 3,
                                ),
                              )
                            : Text(
                                'Submit',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'IBMPlexSans',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ));
  }
}






// import 'package:demoproject/Constant/color.dart';
// import 'package:flutter/material.dart';

// class ListType extends StatefulWidget {
//   ListType({Key? key}) : super(key: key);

//   @override
//   State<ListType> createState() => _ListTypeState();
// }

// enum Gender { male, female }

// Gender? _gender = Gender.male;

// class Appliance {
//   String name;
//   bool isOn;
//   Appliance(this.name, {this.isOn = false});
// }

// final List<Appliance> appliances = [
//   Appliance('TV'),
//   Appliance('Fan'),
//   Appliance('Refrigerator'),
// ];

// class Language {
//   String name;
//   bool isChecked;
//   Language(this.name, {this.isChecked = false});
// }

// final List<Language> languages = [
//   Language('Tamil'),
//   Language('English'),
//   Language('Malayalam')
// ];

// class _ListTypeState extends State<ListType> {
//   List<String> items = [
//     'Item 1',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//     'Item 6',
//     'Item 7',
//     'Item 8',
//     'Item 9',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Blue,
//           title: Center(
//               child: Text(
//             "ListView Type",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           )),
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             child: Column(
//               children: [
//                 // SizedBox(
//                 //   child: ListView(
//                 //     shrinkWrap: true,
//                 //     children: <Widget>[
//                 //       ListTile(title: Text('Item 1')),
//                 //       ListTile(title: Text('Item 2')),
//                 //       ListTile(title: Text('Item 3')),
//                 //       // Add more items as needed
//                 //     ],
//                 //   ),
//                 // ),
//                 // SizedBox(
//                 //   child: ListView.separated(
//                 //     shrinkWrap: true,
//                 //     itemCount: 5,
//                 //     separatorBuilder: (context, index) => Divider(),
//                 //     itemBuilder: (context, index) {
//                 //       return ListTile(title: Text(items[index]));
//                 //     },
//                 //   ),
//                 // ),
//                 // SizedBox(
//                 //     child: ListView.builder(
//                 //   shrinkWrap: true,
//                 //   itemCount: items.length,
//                 //   itemBuilder: (context, index) {
//                 //     return ListTile(title: Text(items[index]));
//                 //   },
//                 // )),
//                 // SizedBox(
//                 //   child: ListView.custom(
//                 //     shrinkWrap: true,
//                 //     childrenDelegate: SliverChildBuilderDelegate(
//                 //       (context, index) {
//                 //         return ListTile(title: Text(items[index]));
//                 //       },
//                 //       childCount: 6,
//                 //     ),
//                 //   ),
//                 // ),
//                 Expanded(
//                   child: ListView(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     children: <Widget>[
//                       SizedBox(
//                           width: 100, child: ListTile(title: Text('Item 1'))),
//                       SizedBox(
//                           width: 100, child: ListTile(title: Text('Item 2'))),
//                       SizedBox(
//                           width: 100, child: ListTile(title: Text('Item 3'))),
//                       // Add more items as needed
//                     ],
//                   ),
//                 ),
//                 // ListView(
//                 //   shrinkWrap: true,
//                 //   scrollDirection: Axis.horizontal,
//                 //   children: <Widget>[
//                 //     SizedBox(width: 50, child: ListTile(title: Text('Item 1'))),
//                 //     SizedBox(width: 50, child: ListTile(title: Text('Item 2'))),
//                 //     SizedBox(width: 50, child: ListTile(title: Text('Item 3'))),
//                 //     // Add more items as needed
//                 //   ],
//                 // ),
//                 // SizedBox(
//                 //   child: Padding(
//                 //     padding: const EdgeInsets.all(8.0),
//                 //     child: ListView(
//                 //       // scrollDirection: Axis.horizontal,
//                 //       shrinkWrap: true,
//                 //       children: const [
//                 //         ListTile(
//                 //           leading: Icon(Icons.car_rental_rounded),
//                 //           title: Text('Car'),
//                 //           trailing: Icon(Icons.more_vert),
//                 //         ),
//                 //         ListTile(
//                 //           leading: Icon(Icons.flight),
//                 //           title: Text('Flight'),
//                 //           trailing: Icon(Icons.more_vert),
//                 //         ),
//                 //         ListTile(
//                 //           leading: Icon(Icons.train),
//                 //           title: Text('Train'),
//                 //           trailing: Icon(Icons.more_vert),
//                 //         )
//                 //       ],
//                 //     ),
//                 //   ),
//                 // ),
//                 // SizedBox(
//                 //   child: Padding(
//                 //     padding: const EdgeInsets.all(8.0),
//                 //     child: ListView(
//                 //       shrinkWrap: true,
//                 //       children: [
//                 //         RadioListTile<Gender>(
//                 //           secondary: Icon(Icons.male),
//                 //           controlAffinity: ListTileControlAffinity.trailing,
//                 //           title: const Text('Male'),
//                 //           value: Gender.male,
//                 //           groupValue: _gender,
//                 //           onChanged: (Gender? value) {
//                 //             setState(() {
//                 //               _gender = value;
//                 //             });
//                 //           },
//                 //         ),
//                 //         RadioListTile<Gender>(
//                 //           secondary: Icon(Icons.female),
//                 //           controlAffinity: ListTileControlAffinity.trailing,
//                 //           title: const Text('Female'),
//                 //           value: Gender.female,
//                 //           groupValue: _gender,
//                 //           onChanged: (Gender? value) {
//                 //             setState(() {
//                 //               _gender = value;
//                 //             });
//                 //           },
//                 //         ),
//                 //       ],
//                 //     ),
//                 //   ),
//                 // ),
//                 // SizedBox(
//                 //   child: Padding(
//                 //     padding: const EdgeInsets.all(8.0),
//                 //     child: ListView.builder(
//                 //       shrinkWrap: true,
//                 //       itemCount: appliances.length,
//                 //       itemBuilder: (context, index) {
//                 //         return SwitchListTile(
//                 //           title: Text('${appliances[index].name}'),
//                 //           value: appliances[index].isOn,
//                 //           onChanged: (bool value) {
//                 //             setState(() {
//                 //               appliances[index].isOn = value;
//                 //             });
//                 //           },
//                 //         );
//                 //       },
//                 //     ),
//                 //   ),
//                 // ),
//                 // SizedBox(
//                 //   child: Padding(
//                 //     padding: const EdgeInsets.all(8.0),
//                 //     child: ListView.builder(
//                 //       shrinkWrap: true,
//                 //       itemCount: languages.length,
//                 //       itemBuilder: (context, index) {
//                 //         return CheckboxListTile(
//                 //           //  controlAffinity: ListTileControlAffinity.leading,
//                 //           title: Text('${languages[index].name}'),
//                 //           value: languages[index].isChecked,
//                 //           onChanged: (bool? value) {
//                 //             setState(() {
//                 //               languages[index].isChecked = value!;
//                 //             });
//                 //           },
//                 //           secondary: const Icon(Icons.language),
//                 //         );
//                 //       },
//                 //     ),
//                 //   ),
//                 // )
//               ],
//             ),
//           ),
//         ));
//   }
// }
