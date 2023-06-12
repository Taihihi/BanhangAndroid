import 'package:flutter/material.dart';
// import 'package:duan/json/constant.dart';
import 'package:duan/theme/colors.dart';
import 'package:duan/pages/more_page.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:duan/widgets/settings_tile.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isOn = false;
  bool _isOn1 = false;
  bool _isOn2 = false;
  bool _isOn3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => MorePage(),
                ),
                (route) => false);
          },
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Text(
              //   "Settings",
              //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              // ),
              const SizedBox(height: 40),
              Row(
                children: [
                  // Icon(
                  //   Icons.person,
                  //   color: Colors.blue,
                  //   size: 45,
                  // ),
                  // const Spacer(
                  //   flex: 1,
                  // ),
                  const Text(
                    'Account Active',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Spacer(),
                  Switch(
                      value: _isOn,
                      onChanged: (bool? value) {
                        setState(() => _isOn = value!);
                      })
                  // SettingsTile(
                  //   color: Colors.blue,
                  //   icon: Ionicons.person_circle_outline,
                  //   title: "Account",
                  //   onTap: () {},
                  // ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  // Icon(
                  //   Icons.edit,
                  //   color: Colors.blue,
                  //   size: 45,
                  // ),
                  // const Spacer(
                  //   flex: 1,
                  // ),
                  const Text(
                    'Sound',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Spacer(),
                  Switch(
                      value: _isOn1,
                      onChanged: (bool? value) {
                        setState(() => _isOn1 = value!);
                      })
                ],
              ),
              // SettingsTile(
              //   color: Colors.green,
              //   icon: Ionicons.pencil_outline,
              //   title: "Edit Information",
              //   onTap: () {},
              // ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  // Icon(
                  //   Icons.dark_mode,
                  //   color: Colors.blue,
                  //   size: 45,
                  // ),
                  // const Spacer(
                  //   flex: 1,
                  // ),
                  const Text(
                    'Theme Dark',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Spacer(),
                  Switch(
                      value: _isOn2,
                      onChanged: (bool? value) {
                        setState(() => _isOn2 = value!);
                      })
                ],
              ),
              // SettingsTile(
              //   color: Colors.black,
              //   icon: Ionicons.moon_outline,
              //   title: "Theme",
              //   onTap: () {},
              // ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  // Icon(
                  //   Icons.translate,
                  //   color: Colors.blue,
                  //   size: 45,
                  // ),
                  // const Spacer(
                  //   flex: 1,
                  // ),
                  const Text(
                    'Opportunity',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Spacer(),
                  Switch(
                      value: _isOn3,
                      onChanged: (bool? value) {
                        setState(() => _isOn3 = value!);
                      })
                ],
              ),
              // SettingsTile(
              //   color: Colors.purple,
              //   icon: Ionicons.language_outline,
              //   title: "Language",
              //   onTap: () {},
              // ),
              const SizedBox(
                height: 40,
              ),
              // Row(
              //   children: [
              //     Icon(
              //       Icons.language,
              //       color: Colors.blue,
              //       size: 45,
              //     ),
              //     const Spacer(
              //       flex: 1,
              //     ),
              //     const Text(
              //       'Language',
              //       style: TextStyle(fontSize: 24),
              //     ),
              //     const Spacer(),
              //     Switch(
              //         value: _isOn,
              //         onChanged: (bool? value) {
              //           setState(() => _isOn = value!);
              //         })
              //   ],
              // ),
              // SettingsTile(
              //   color: Colors.red,
              //   icon: Ionicons.log_out_outline,
              //   title: "Logout",
              //   onTap: () {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:duan/widgets/settings_tile.dart';

// class SettingsScreen extends StatefulWidget {
//   const SettingsScreen({Key? key}) : super(key: key);

//   @override
//   State<SettingsScreen> createState() => _SettingsScreenState();
// }

// class _SettingsScreenState extends State<SettingsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Settings'),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 "Settings",
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 40),
//               SettingsTile(
//                 color: Colors.blue,
//                 icon: Ionicons.person_circle_outline,
//                 title: "Account",
//                 onTap: () {},
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               SettingsTile(
//                 color: Colors.green,
//                 icon: Ionicons.pencil_outline,
//                 title: "Edit Information",
//                 onTap: () {},
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               SettingsTile(
//                 color: Colors.black,
//                 icon: Ionicons.moon_outline,
//                 title: "Theme",
//                 onTap: () {},
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               SettingsTile(
//                 color: Colors.purple,
//                 icon: Ionicons.language_outline,
//                 title: "Language",
//                 onTap: () {},
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               SettingsTile(
//                 color: Colors.red,
//                 icon: Ionicons.log_out_outline,
//                 title: "Logout",
//                 onTap: () {},
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
