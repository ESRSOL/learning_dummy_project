import 'package:flutter/material.dart';
import 'package:learning_dummy_project/services/local_notifications_services.dart';

class LocalNotificationOnAnEventScreen extends StatefulWidget {
  const LocalNotificationOnAnEventScreen({super.key});

  @override
  State<LocalNotificationOnAnEventScreen> createState() =>
      _LocalNotificationOnAnEventScreenState();
}

class _LocalNotificationOnAnEventScreenState
    extends State<LocalNotificationOnAnEventScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    LocalNotificationServices.initiaizeNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Notification Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                LocalNotificationServices.showNotification(
                  id: 1,
                  title: 'Hello Hello',
                  body: 'Ayush The flutter developer this side!',
                  payload: 'ayush.abs',
                );
              },
              child: const Text('Get Notification'),
            ),
          ],
        ),
      ),
    );
  }
}
