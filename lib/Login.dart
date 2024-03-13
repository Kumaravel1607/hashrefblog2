// import 'package:demoproject/Constant/color.dart';
// import 'package:flutter/material.dart';

// class Login extends StatefulWidget {
//   Login({Key? key}) : super(key: key);

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   bool isloading = false;
//   @override
//   void dispose() {
//     super.dispose();
//   }

//   final GlobalKey<FormState> formkey = GlobalKey<FormState>();
//   bool _passVisibility = true;
//   bool isEmailCorrect = false;
//   TextEditingController email = TextEditingController();
//   TextEditingController pass = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//             child: Form(
//       key: formkey,
//       child: Container(
//         margin: EdgeInsets.only(top: 120),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Center(
//               //     child: Image.asset(
//               //   'assets/images/logo3.png',
//               //   height: 150,
//               //   fit: BoxFit.cover,
//               // )),
//               // SizedBox(
//               //   height: 30,
//               // ),
//               // Center(
//               //   child: Text(
//               //     'Login to your Account',
//               //     style: TextStyle(
//               //         fontSize: 20,
//               //         fontWeight: FontWeight.w600,
//               //         color: Colors.black),
//               //   ),
//               // ),
//               // SizedBox(
//               //   height: 30,
//               // ),
//               Text(
//                 'Email',
//                 style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.black),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               TextFormField(
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (String? value) {
//                   if (value!.isEmpty) {
//                     return "Please enter email";
//                   }

//                   return null;
//                 },
//                 onChanged: (value) {
//                   setState(() {
//                     isEmailCorrect = !(!RegExp(
//                             r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                         .hasMatch(value));
//                   });
//                 },
//                 controller: email,
//                 autocorrect: true,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: Blue, width: 2)),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: const BorderSide(color: box),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                           color: isEmailCorrect == false ? red : Blue,
//                           width: 2),
//                     ),
//                     contentPadding:
//                         const EdgeInsets.only(left: 24, top: 14, bottom: 13),
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: "Enter your Email",
//                     hintStyle: const TextStyle(color: grey, fontSize: 14),
//                     prefixIcon: Icon(
//                       Icons.account_circle,
//                       color: Blue,
//                     ),
//                     suffixIcon: Icon(
//                       Icons.mail,
//                       color: red,
//                     )),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 'Password',
//                 style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.black),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               TextFormField(
//                 validator: (String? value) {
//                   if (value!.isEmpty) {
//                     return "Please enter password";
//                   }

//                   return null;
//                 },
//                 controller: pass,
//                 autocorrect: true,
//                 obscureText: _passVisibility,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: red, width: 2)),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: const BorderSide(color: box),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: const BorderSide(color: Blue, width: 2),
//                     ),
//                     contentPadding:
//                         const EdgeInsets.only(left: 24, top: 14, bottom: 13),
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: 'Enter your password',
//                     hintStyle: const TextStyle(
//                         fontFamily: 'Rubik', color: grey, fontSize: 14),
//                     suffixIcon: IconButton(
//                       color: grey,
//                       icon: _passVisibility
//                           ? Icon(
//                               Icons.visibility_off,
//                               color: LiteBlue,
//                             )
//                           : Icon(
//                               Icons.visibility,
//                               color: Blue,
//                             ),
//                       onPressed: () {
//                         _passVisibility = !_passVisibility;
//                         setState(() {});
//                       },
//                     ),
//                     prefixIcon: Icon(
//                       Icons.lock_rounded,
//                       color: Blue,
//                     )),
//               ),
//               SizedBox(height: 25),
//               Center(
//                 child: SizedBox(
//                   width: 200,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       backgroundColor: Blue,
//                       minimumSize: const Size.fromHeight(44),
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         if (formkey.currentState!.validate()) {
//                           isloading = true;
//                           print(isloading);
//                         }
//                       });
//                     },
//                     child: isloading == true
//                         ? Container(
//                             width: 24,
//                             height: 24,
//                             padding: const EdgeInsets.all(2.0),
//                             child: const CircularProgressIndicator(
//                               color: Colors.white,
//                               strokeWidth: 3,
//                             ),
//                           )
//                         : Text(
//                             'Submit',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontFamily: 'IBMPlexSans',
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     )));
//   }
// }

import 'package:demoproject/Constant/color.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isloading = false;
  @override
  void dispose() {
    super.dispose();
  }

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _passVisibility = true;
  bool isEmailCorrect = false;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
            child: Form(
          key: formkey,
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: black,
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: greytext,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Icon(
                        Icons.account_circle,
                        color: greytext,
                        size: 120,
                      ),
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
                      controller: email,
                      autocorrect: true,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your email',
                        contentPadding: const EdgeInsets.only(
                            left: 24, top: 10, bottom: 10),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your Email",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Blue,
                        ),
                      ),
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
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your password',
                        contentPadding: const EdgeInsets.only(
                            left: 24, top: 10, bottom: 10),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your password",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.lock_rounded,
                          color: Blue,
                        ),
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
                      ),
                    ),
                    SizedBox(height: 25),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password ?',
                            style: TextStyle(
                              color: black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Blue,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: white,
                            minimumSize: const Size.fromHeight(50),
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
                                    color: Colors.black,
                                    strokeWidth: 3,
                                  ),
                                )
                              : Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    color: black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Row(children: const <Widget>[
                    //   Expanded(
                    //       child: Divider(
                    //     indent: 10.0,
                    //     endIndent: 10.0,
                    //     thickness: 1,
                    //     color: greytext,
                    //   )),
                    //   Text(
                    //     'or Continue with',
                    //     style: TextStyle(
                    //         color: greytext,
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.w500),
                    //   ),
                    //   Expanded(
                    //       child: Divider(
                    //     indent: 10.0,
                    //     endIndent: 10.0,
                    //     thickness: 1,
                    //     color: greytext,
                    //   )),
                    // ]),
                    // const SizedBox(
                    //   height: 30,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     ElevatedButton(
                    //         style: ElevatedButton.styleFrom(
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(22),
                    //           ),
                    //           side: const BorderSide(
                    //               style: BorderStyle.solid,
                    //               color: grey,
                    //               width: 1),
                    //           backgroundColor: white,
                    //           foregroundColor: black,
                    //           fixedSize: const Size(158, 44),
                    //         ),
                    //         onPressed: () {},
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               'assets/images/g.png',
                    //               height: 20,
                    //             ),
                    //             const SizedBox(
                    //               width: 5,
                    //             ),
                    //             const Text("Google",
                    //                 style: TextStyle(
                    //                     fontWeight: FontWeight.w700,
                    //                     fontSize: 16))
                    //           ],
                    //         )),
                    //     ElevatedButton(
                    //         style: ElevatedButton.styleFrom(
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(22),
                    //           ),
                    //           side: const BorderSide(
                    //               style: BorderStyle.solid,
                    //               color: grey,
                    //               width: 1),
                    //           backgroundColor: white,
                    //           foregroundColor: black,
                    //           fixedSize: const Size(158, 44),
                    //         ),
                    //         onPressed: () {},
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               'assets/images/fb.png',
                    //               height: 25,
                    //             ),
                    //             const SizedBox(
                    //               width: 8.5,
                    //             ),
                    //             const Padding(
                    //               padding: EdgeInsets.only(top: 13, bottom: 12),
                    //               child: Text("Facebook",
                    //                   style: TextStyle(
                    //                       fontWeight: FontWeight.w700,
                    //                       fontSize: 16)),
                    //             )
                    //           ],
                    //         )),
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 25,
                    // ),
                    // TextButton(
                    //     onPressed: () {},
                    //     child: Center(
                    //       child: RichText(
                    //         text: const TextSpan(
                    //             text: " Don't have an account?",
                    //             style: TextStyle(
                    //               color: Colors.grey,
                    //               fontWeight: FontWeight.w600,
                    //               fontSize: 16,
                    //             ),
                    //             children: [
                    //               TextSpan(
                    //                 text: ' Sign up here',
                    //                 style: TextStyle(
                    //                     color: Blue,
                    //                     fontWeight: FontWeight.w600,
                    //                     fontSize: 16,
                    //                     fontStyle: FontStyle.normal),
                    //               )
                    //             ]),
                    //       ),
                    //     ))
                  ],
                ),
              ),
            ),
          ),
        )));
  }
}
