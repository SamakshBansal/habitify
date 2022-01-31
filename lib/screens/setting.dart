import 'package:flutter/material.dart';

class MySetting extends StatefulWidget {
  const MySetting({Key? key}) : super(key: key);

  @override
  _MySettingState createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Setting',
        style: TextStyle(fontSize: 60),
      ),
    );
  }
}
