import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InternetConnectivityCheckLearningScreen extends StatefulWidget {
  const InternetConnectivityCheckLearningScreen({super.key});

  @override
  State<InternetConnectivityCheckLearningScreen> createState() =>
      _InternetConnectivityCheckLearningScreenState();
}

class _InternetConnectivityCheckLearningScreenState
    extends State<InternetConnectivityCheckLearningScreen> {
  checkConnectivity() async {
    final connectivityResult = await (Connectivity().checkConnectivity());

    print('connectivityResult in checkConnectivity: $connectivityResult');

    if (connectivityResult == ConnectivityResult.none) {
      print('INTERNET OFF HAI BHAI TERA!!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internet Connectivity Check Learning Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                checkConnectivity();
              },
              child: const Text('Check Internet Connectivity'),
            )
          ],
        ),
      ),
    );
  }
}
