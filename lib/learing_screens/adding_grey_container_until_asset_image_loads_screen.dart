import 'package:flutter/material.dart';

class AddingGreyContainerUntilAssetImageLoadsScreen extends StatefulWidget {
  const AddingGreyContainerUntilAssetImageLoadsScreen({super.key});

  @override
  State<AddingGreyContainerUntilAssetImageLoadsScreen> createState() =>
      _AddingGreyContainerUntilAssetImageLoadsScreenState();
}

class _AddingGreyContainerUntilAssetImageLoadsScreenState
    extends State<AddingGreyContainerUntilAssetImageLoadsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adding Grey Container to Image'),
      ),
      body: Column(
        children: [
          MyCustomContainer(),
        ],
      ),
    );
  }
}

class MyCustomContainer extends StatefulWidget {
  const MyCustomContainer({
    super.key,
  });

  @override
  State<MyCustomContainer> createState() => _MyCustomContainerState();
}

class _MyCustomContainerState extends State<MyCustomContainer> {
  final GlobalKey _containerKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    double? containerWidth = _containerKey.currentContext?.size?.width;

    print('CONTAINER WIDTH IN INIT: $containerWidth');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            key: _containerKey,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(
              'assets/images/otp.png',
              scale: 10,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              double? containerWidth =
                  _containerKey.currentContext?.size?.width;

              print('CONTAINER WIDTH: $containerWidth');

              double? containerHeight =
                  _containerKey.currentContext?.size?.height;

              print('CONTAINER HEIGHT: $containerHeight');
            },
            child: const Text('Print Width'),
          ),
        ],
      ),
    );
  }
}
