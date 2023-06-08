// File: screens/notification_page.dart
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Notifications'),
      // ),
      appBar: appBar(),
      body: listView(),
    );
  }
}

PreferredSizeWidget appBar() {
  return AppBar(
    title: Text('Notifications'),
  );
}

Widget listView() {
  return Container(
    child: ListView.separated(
        itemBuilder: (context, index) {
          return ListViewItem(index);
        },
        separatorBuilder: (context, index) {
          return Divider(height: 0);
        },
        itemCount: 5),
  );
}

Widget ListViewItem(int index) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
    child: Row(
      children: [
        prefixIcons(),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                message(index),
                timeAndData(index),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget prefixIcons() {
  return Container(
    height: 50,
    width: 50,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey.shade300,
    ),
    child: Icon(
      Icons.notifications,
      size: 25,
      color: Colors.grey.shade700,
    ),
  );
}

Widget message(int index) {
  double textSize = 14;
  return Container(
    child: RichText(
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text: '',
        style: TextStyle(
          fontSize: textSize,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: 'Message Description',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    ),
  );
}

Widget timeAndData(int index) {
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '6-6-2023',
          style: TextStyle(
            fontSize: 10,
          ),
        ),
        Text(
          '7:00 AM',
          style: TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    ),
  );
}
