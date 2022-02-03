import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:habitify/screens/newarea.dart';

class MyJournal extends StatefulWidget {
  const MyJournal({Key? key}) : super(key: key);

  @override
  _MyJournalState createState() => _MyJournalState();
}

class _MyJournalState extends State<MyJournal> {
  TextEditingController _controller = TextEditingController();
  bool _isEnable = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: 'My Journal');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              '  ' + DateFormat.MMMd().format(DateTime.now()).toUpperCase(),
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 170,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    controller: _controller,
                    enabled: _isEnable,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      setState(() {
                        _isEnable = true;
                      });
                    })
              ],
            ),
            horizontalList2,
            const Divider(color: Colors.black),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}

Widget horizontalList2 = Container(
  margin: const EdgeInsets.symmetric(vertical: 20.0),
  height: 40,
  width: 390,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          )),
        ),
        onPressed: () {},
        child: Row(
          children: const [
            Icon(Icons.library_books_outlined),
            Text('  All Habits'),
          ],
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ))),
        onPressed: () {},
        child: Row(
          children: const [
            Icon(Icons.folder),
            Text('  Morning'),
          ],
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: const [
            Icon(Icons.wb_sunny),
            Text('  Afternoon'),
          ],
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          )),
        ),
        onPressed: () {},
        child: Row(
          children: const [
            Icon(Icons.add),
            Text('  New Area'),
          ],
        ),
      )
    ],
  ),
);
