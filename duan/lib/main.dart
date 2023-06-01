// import 'package:flutter/material.dart';
// // import 'package:flutter_demo/app.dart';
// import 'package:flutter_demo_15/ui/major/major_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your8 application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'MVVM Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MajorScreen(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// // import 'package:flutter_demo/app.dart';
// // import 'package:flutter_demo_15/ui/major/major_screen.dart';
// import 'package:flutter_demo_15/ui/login/login_screen.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_demo_15/utils/prefs.dart';
// import 'utils/app_variables.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your8 application.
//   @override
//   Widget build(BuildContext context) {
//     Prefs.init();
//     return const MaterialApp(
//       title: 'Flutter Demo',
//       // theme: ThemeData(
//       //   primarySwatch: Colors.blue,
//       // ),
//       debugShowCheckedModeBanner: false,
//       home: LoginScreen(),
//       localizationsDelegates: [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         FormBuilderLocalizations.delegate,
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_demo_15/ui/login/login_screen.dart';
import 'package:flutter_demo_15/utils/prefs.dart';
import 'utils/app_variables.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Prefs.init();
    AppVariables.init();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
    );
  }
}
