// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
//
// class FetchingGeolocationScreen extends StatefulWidget {
//   const FetchingGeolocationScreen({super.key});
//
//   @override
//   State<FetchingGeolocationScreen> createState() =>
//       _FetchingGeolocationScreenState();
// }
//
// class _FetchingGeolocationScreenState extends State<FetchingGeolocationScreen> {
//   Position? position;
//
//   getLocation() async {
//     bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//
//     if (!serviceEnabled) {
//       print('Location is not enabled in Device!!!');
//
//       showDialog(
//         context: context,
//         builder: (context) {
//           return Dialog(
//             child: Container(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 10,
//                 vertical: 8,
//               ),
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Icon(Icons.location_off_outlined),
//                   SizedBox(
//                     height: 40,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('GPS of your device is not ON.'),
//                         Text('Please enable it.'),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       );
//     } else {
//       LocationPermission permission = await Geolocator.checkPermission();
//
//       if (permission == LocationPermission.denied) {
//         print('Location is not provided to the app.');
//
//         LocationPermission requestPermission =
//             await Geolocator.requestPermission();
//
//         print('requestPermission: $requestPermission');
//
//         if (requestPermission == LocationPermission.denied ||
//             requestPermission == LocationPermission.deniedForever) {
//           print('Permission DE DE bhai!!!!');
//         } else {
//           Position position = await Geolocator.getCurrentPosition();
//
//           print('position after providing permission: $position');
//         }
//       }
//
//       if (permission == LocationPermission.deniedForever) {
//         print('Location Permission is denied forever!!!');
//       } else {
//         position = await Geolocator.getCurrentPosition();
//
//         print('position: $position');
//       }
//     }
//   }
//
//   SizedBox sizedBoxH20 = const SizedBox(height: 20);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Fetching Geolocation Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 getLocation();
//               },
//               child: const Text('Get Location'),
//             ),
//             sizedBoxH20,
//             ElevatedButton(
//               onPressed: () async {
//                 LocationPermission requestPermission =
//                     await Geolocator.requestPermission();
//
//                 print('requestPermission: $requestPermission');
//
//                 if (requestPermission == LocationPermission.denied ||
//                     requestPermission == LocationPermission.deniedForever) {
//                   print('Permission DE DE bhai!!!!');
//                 } else {
//                   Position position = await Geolocator.getCurrentPosition();
//
//                   print('position after providing permission: $position');
//                 }
//               },
//               child: const Text('Ask Location Permission'),
//             ),
//             sizedBoxH20,
//             ElevatedButton(
//               onPressed: () {
//                 Geolocator.openAppSettings();
//               },
//               child: const Text('Open Settings'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
