import 'package:flutter/material.dart';
import 'package:learning_dummy_project/learing_screens/adding_grey_container_until_asset_image_loads_screen.dart';
import 'package:learning_dummy_project/learing_screens/converting_timestamp_to_timezone_screen.dart';
import 'package:learning_dummy_project/learing_screens/internet_connectivity_check_learning_screen.dart';
import 'package:learning_dummy_project/learing_screens/local_notification_on_an_event_screen.dart';

class LearningScreen extends StatefulWidget {
  const LearningScreen({super.key});

  @override
  State<LearningScreen> createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Screens'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // INTERNET CONNECTIVITY CHECK
            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const InternetConnectivityCheckLearningScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Internet Connectivity Check',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // CONVERTING TIMESTAMP
            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const ConvertingTimestampToTimezoneScreen(),
                    ),
                  );
                },
                child: const Text('Converting Timestamp'),
              ),
            ),
            const SizedBox(height: 20),

            // ADDING GREY CONTAINER
            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const AddingGreyContainerUntilAssetImageLoadsScreen(),
                    ),
                  );
                },
                child: const Text('Adding Grey Container'),
              ),
            ),
            const SizedBox(height: 20),

            //
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const LocalNotificationOnAnEventScreen(),
                  ),
                );
              },
              child: const Text('Testing Notifications'),
            ),
          ],
        ),
      ),
    );
  }
}
