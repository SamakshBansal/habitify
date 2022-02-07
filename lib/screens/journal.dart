import 'package:flutter/material.dart';
import 'package:habitify/screens/newarea.dart';
import 'package:habitify/screens/task.dart';
import 'package:intl/intl.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:habitify/screens/newarea.dart';

class MyJournal extends StatefulWidget {
  const MyJournal({Key? key}) : super(key: key);

  @override
  _MyJournalState createState() => _MyJournalState();
}

class _MyJournalState extends State<MyJournal> {
  TextEditingController _controller = TextEditingController();
  bool _isEnable = false;
  String dropdownValue = 'This Week';

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
      body: Container(
        margin: const EdgeInsets.all(10),
        child: SafeArea(
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 40,
                width: 390,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const NewArea();
                          }),
                        );
                      },
                      child: Row(
                        children: const [
                          Icon(Icons.add),
                          Text('  New Area'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(color: Colors.black),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(
                        () {
                          dropdownValue = newValue!;
                        },
                      );
                    },
                    items: <String>['This Week', 'This Month', 'This Year']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  children: [
                    TaskWidget(context),
                    TaskWidget(context),
                    TaskWidget(context),
                    TaskWidget(context),
                    TaskWidget(context),
                    TaskWidget(context),
                    TaskWidget(context),
                    TaskWidget(context),
                    TaskWidget(context),
                    TaskWidget(context),
                    TaskWidget(context),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        child: const Icon(Icons.add),
        overlayColor: Colors.grey,
        overlayOpacity: 0.9,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.mood_bad),
            label: "Break Bad Habit",
            onTap: () {},
          ),
          SpeedDialChild(
            child: const Icon(Icons.mood_sharp),
            label: "Create Good Habit",
            onTap: () {},
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.blue,
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

class TaskWidget extends StatefulWidget {
  const TaskWidget(
    BuildContext context, {
    Key? key,
  }) : super(key: key);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const MyTask();
          }),
        );
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.task_alt_outlined),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Task to do',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('0/1 times'),
                  ],
                ),
              ),
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.check),
              onPressed: () {},
              label: const Text('Done'),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
