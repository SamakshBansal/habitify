import 'package:flutter/material.dart';

class MyProgress extends StatefulWidget {
  const MyProgress({Key? key}) : super(key: key);

  @override
  _MyProgressState createState() => _MyProgressState();
}

class _MyProgressState extends State<MyProgress> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Progress',
        style: TextStyle(fontSize: 60),
      ),
    );
  }
}
