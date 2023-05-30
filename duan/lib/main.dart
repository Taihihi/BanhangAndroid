import 'package:flutter/material.dart';
// import 'package:flutter_demo_14/cloles/cloles6.dart';
// import 'package:flutter_demo_14/pages/home_page.dart';
// import 'package:duan/json/getstart.dart';
// import 'package:duan/test/test1.dart';
// import 'package:flutter_demo_14/json/login.dart';
// // import 'package:flutter_demo_14/appmenu.dart';
// // import 'package:flutter_demo_14/screens/home_page.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: LoginPage(),
//   ));
// }

import 'package:flutter/material.dart';
import 'package:flutter_demo_14/ui/login/login_screen.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_demo_14/utils/prefs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your8 application.
  @override
  Widget build(BuildContext context) {
    Prefs.init();
    return const MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FormBuilderLocalizations.delegate,
      ],
    );
  }
}
