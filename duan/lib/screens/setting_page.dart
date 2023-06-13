import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:duan/pages/more_page.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isOn = false;
  bool _isOn1 = false;
  bool _isOn2 = false;
  bool _isOn3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, "Change Password"),
            buildAccountOptionRow(context, "Content Settings"),
            buildAccountOptionRow(context, "Social"),
            buildAccountOptionRow(context, "Language"),
            buildAccountOptionRow(context, "Privacy And Security"),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Theme',
                  style: TextStyle(fontSize: 24),
                ),
                const Spacer(),
                Switch(
                    value: _isOn,
                    onChanged: (bool? value) {
                      setState(() => _isOn = value!);
                    })
              ],
            ),
            Row(
              children: [
                const Text(
                  'New For You',
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
            Row(
              children: [
                const Text(
                  'Account Activity',
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
            Row(
              children: [
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
            // buildNotificationOptionRow("New For You", true),
            // buildNotificationOptionRow("Account Activity", true),
            // buildNotificationOptionRow("Opportunity", false),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                    Text("Option 3"),
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

OutlineButton(
    {required EdgeInsets padding,
    required RoundedRectangleBorder shape,
    required Null Function() onPressed,
    required Text child}) {}

FlatButton({required Null Function() onPressed, required Text child}) {}
