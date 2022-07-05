import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Center(child: Text('Settings')),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Icon(Icons.file_download_outlined),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Downloads',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black38,
            indent: 20.0,
            endIndent: 20.0,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Icon(Icons.dark_mode_outlined),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Dark mode',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
              ),
              Spacer(),
              Switch(value: isSwitched, onChanged: (value) {}),
            ],
          ),
          Divider(
            color: Colors.black38,
            indent: 20.0,
            endIndent: 20.0,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Icon(Icons.info_outline),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            indent: 20.0,
            endIndent: 20.0,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Icon(Icons.file_copy_outlined),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Licenses',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
