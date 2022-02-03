import 'package:flutter/material.dart';

class MyProgress extends StatefulWidget {
  const MyProgress({Key? key}) : super(key: key);

  @override
  _MyProgressState createState() => _MyProgressState();
}

class _MyProgressState extends State<MyProgress> {
  String dropdownValue = 'This Week';
  double habit = 0.3;
  late double percentage = habit * 100;
  late int result = percentage.toInt();

  double mood = 0.2;
  late double percentage1 = mood * 10;
  late int result1 = percentage1.toInt();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Jan24',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' - ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Jan 30',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
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
                  const Icon(
                    Icons.info_outline,
                    color: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Progress',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              LinearProgressIndicator(
                value: habit,
                semanticsLabel: 'Linear progress indicator',
                minHeight: 30,
                color: Colors.blue,
                backgroundColor: Colors.blueGrey.shade300,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Habit Score : $result / 100',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              LinearProgressIndicator(
                value: mood,
                semanticsLabel: 'Linear progress indicator',
                minHeight: 30,
                color: Colors.orange,
                backgroundColor: Colors.blueGrey.shade300,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Mood Score : $result1 / 10',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
