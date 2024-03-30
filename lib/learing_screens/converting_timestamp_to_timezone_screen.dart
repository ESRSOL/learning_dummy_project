import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ConvertingTimestampToTimezoneScreen extends StatefulWidget {
  const ConvertingTimestampToTimezoneScreen({super.key});

  @override
  State<ConvertingTimestampToTimezoneScreen> createState() =>
      _ConvertingTimestampToTimezoneScreenState();
}

class _ConvertingTimestampToTimezoneScreenState
    extends State<ConvertingTimestampToTimezoneScreen> {
  convertTimestampToTimezone() async {
    DateTime now = DateTime.now();

    int timeStamp = now.millisecondsSinceEpoch;

    DateTime myDateTime = DateTime.fromMillisecondsSinceEpoch(timeStamp);

    print('Current timeStamp: $timeStamp');

    DateFormat dateFormatter = DateFormat('dd-MM-yyyy HH:mm:ss');

    String formattedDate = dateFormatter.format(myDateTime);

    print('formattedDate: $formattedDate');

    DateTime dateTime2 =
        DateFormat('dd-MM-yyyy HH:mm:ss').parseUTC(formattedDate).toLocal();

    print('dateTime2: $dateTime2');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Converting Timestamp to timezone'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                convertTimestampToTimezone();
              },
              child: const Text('Convert Timestamp to Timezone'),
            ),
          ],
        ),
      ),
    );
  }
}
