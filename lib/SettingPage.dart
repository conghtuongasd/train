import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings'),
        actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.settings,
        color: Colors.white,
      ),
      onPressed: () {
        // do something
      },
    )
  ],
      ),
      body: ListView(
        children: <Widget>[
           ListTile(
            leading: Icon(Icons.language),
            title: Text('Ngôn Ngữ'),
          ),
          ListTile(
            leading: Icon(Icons.work_outlined),
            title: Text('Điều Khoản Và Điều Kiện'),
          ),
          ListTile(
            leading: Icon(Icons.brightness_3),
            title: Text('Chính Sách Bảo Mật'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Đánh Giá'),
          ),
        ],
      )
    );
  }
}