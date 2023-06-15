// file widget_tree.dart

import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:duan/auth.dart';
import 'package:duan/pages/home_page.dart';
import 'package:duan/pages/login_register.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:duan/auth.dart';
// import 'package:duan/pages/home_page.dart';
// import 'package:duan/pages/login_register.dart';

// class WidgetTree extends StatefulWidget {
//   const WidgetTree({Key? key}) : super(key: key);

//   @override
//   State<WidgetTree> createState() => _WidgetTreeState();
// }

// class _WidgetTreeState extends State<WidgetTree> {
//   late Stream<User?> _authStream;

//   @override
//   void initState() {
//     super.initState();
//     _authStream = Auth().authStateChanges;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User?>(
//       stream: _authStream,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           // Hiển thị màn hình chờ khi đang kiểm tra trạng thái xác thực
//           return const Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         } else if (snapshot.hasData) {
//           // Đã đăng nhập, hiển thị trang chủ
//           return HomePage();
//         } else {
//           // Chưa đăng nhập, hiển thị trang đăng nhập/đăng ký
//           return const LoginPage();
//         }
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:duan/auth.dart';
// import 'package:duan/pages/home_page.dart';
// import 'package:duan/pages/login_register.dart';

// class WidgetTree extends StatefulWidget {
//   const WidgetTree({Key? key}) : super(key: key);

//   @override
//   State<WidgetTree> createState() => _WidgetTreeState();
// }

// class _WidgetTreeState extends State<WidgetTree> {
//   late Stream<User?> _authStream;

//   @override
//   void initState() {
//     super.initState();
//     _authStream = Auth().authStateChanges;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User?>(
//       stream: _authStream,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           // Hiển thị màn hình chờ khi đang kiểm tra trạng thái xác thực
//           return const Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         } else if (snapshot.hasData) {
//           // Đã đăng nhập, hiển thị trang chủ
//           return HomePage();
//         } else {
//           // Chưa đăng nhập, hiển thị trang đăng nhập/đăng ký
//           return const LoginPage();
//         }
//       },
//     );
//   }
// }
