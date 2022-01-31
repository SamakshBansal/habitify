import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyJournal extends StatefulWidget {
  const MyJournal({Key? key}) : super(key: key);

  @override
  _MyJournalState createState() => _MyJournalState();
}

class _MyJournalState extends State<MyJournal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              '  ' + DateFormat.yMMMEd().format(DateTime.now()),
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
