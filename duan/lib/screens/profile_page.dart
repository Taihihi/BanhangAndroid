// // File: screens/profile_page.dart
// import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:duan/json/constant.dart';
// import 'package:duan/theme/colors.dart';
// // import 'package:duan/pages/account_page.dart';
// // import 'package:duan/pages/cart_page.dart';
// // import 'package:duan/pages/home_page.dart';
// // import 'package:duan/pages/more_page.dart';
// // import 'package:duan/pages/store_page.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//       ),
//       body:
//           // Center(
//           //   child: Text('Profile Page'),
//           ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//             child: Row(
//               children: [
//                 Container(
//                   width: 130,
//                   height: 130,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage(
//                           image: AssetImage(profileUrl), fit: BoxFit.cover)),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "TTT",
//                       style:
//                           TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     // Text(
//                     //   "Member since 2019",
//                     //   style: TextStyle(
//                     //       fontSize: 13, color: black.withOpacity(0.7)),
//                     // ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     // Container(
//                     //   decoration: BoxDecoration(
//                     //       color: black, borderRadius: BorderRadius.circular(5)),
//                     //   child: Padding(
//                     //     padding: const EdgeInsets.all(12.0),
//                     //     child: Center(
//                     //       child: Text(
//                     //         "EDIT ACCOUNT",
//                     //         style: TextStyle(fontSize: 13, color: white),
//                     //       ),
//                     //     ),
//                     //   ),
//                     // )
//                   ],
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Divider(
//             thickness: 1,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           FormBuilderTextField(
//             name: "TTT",
//             keyboardType: TextInputType.text,
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.person_outline_rounded),
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
//               enabledBorder: const OutlineInputBorder(
//                 borderSide: BorderSide(color: Color.fromARGB(255, 18, 7, 7)),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                     width: 2, color: Color.fromARGB(255, 245, 238, 238)),
//               ),
//               fillColor: Color.fromARGB(255, 255, 255, 255),
//               filled: true,
//               labelText: "Full Name",
//               hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
//             ),
//             validator: FormBuilderValidators.compose([
//               FormBuilderValidators.required(context),
//               FormBuilderValidators.maxLength(context, 70),
//             ]),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           FormBuilderTextField(
//             name: "Email",
//             keyboardType: TextInputType.text,
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.email_outlined),
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
//               enabledBorder: const OutlineInputBorder(
//                 borderSide: BorderSide(color: Color.fromARGB(255, 18, 7, 7)),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                     width: 2, color: Color.fromARGB(255, 245, 238, 238)),
//               ),
//               fillColor: Color.fromARGB(255, 255, 255, 255),
//               filled: true,
//               labelText: "Email",
//               hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
//             ),
//             validator: FormBuilderValidators.compose([
//               FormBuilderValidators.required(context),
//               FormBuilderValidators.maxLength(context, 70),
//             ]),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           FormBuilderTextField(
//             name: "Phone",
//             keyboardType: TextInputType.text,
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.phone),
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
//               enabledBorder: const OutlineInputBorder(
//                 borderSide: BorderSide(color: Color.fromARGB(255, 18, 7, 7)),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                     width: 2, color: Color.fromARGB(255, 245, 238, 238)),
//               ),
//               fillColor: Color.fromARGB(255, 255, 255, 255),
//               filled: true,
//               labelText: "Phone",
//               hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
//             ),
//             validator: FormBuilderValidators.compose([
//               FormBuilderValidators.required(context),
//               FormBuilderValidators.maxLength(context, 70),
//             ]),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           FormBuilderTextField(
//             name: "Password",
//             keyboardType: TextInputType.text,
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.fingerprint),
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
//               enabledBorder: const OutlineInputBorder(
//                 borderSide: BorderSide(color: Color.fromARGB(255, 18, 7, 7)),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                     width: 2, color: Color.fromARGB(255, 245, 238, 238)),
//               ),
//               fillColor: Color.fromARGB(255, 255, 255, 255),
//               filled: true,
//               labelText: "Password",
//               hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
//             ),
//             validator: FormBuilderValidators.compose([
//               FormBuilderValidators.required(context),
//               FormBuilderValidators.maxLength(context, 70),
//             ]),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 130, right: 120),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 GestureDetector(
//                     onTap: () {
//                       Navigator.pushAndRemoveUntil(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ProfilePage(),
//                           ),
//                           (route) => false);
//                     },
//                     child: Container(
//                       width: 100,
//                       height: 50,
//                       decoration: BoxDecoration(
//                           color: black,
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Center(
//                         child: Text(
//                           "Edit",
//                           style: TextStyle(fontSize: 20, color: white),
//                         ),
//                       ),
//                     )),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
