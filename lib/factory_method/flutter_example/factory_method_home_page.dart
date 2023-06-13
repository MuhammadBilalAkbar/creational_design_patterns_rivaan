import 'factory_method.dart';
import 'package:flutter/material.dart';

class FactoryMethodHomePage extends StatefulWidget {
  const FactoryMethodHomePage({super.key});

  @override
  State<FactoryMethodHomePage> createState() => _FactoryMethodHomePageState();
}

class _FactoryMethodHomePageState extends State<FactoryMethodHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // if(TargetPlatform.android) {
            // PlatformButton(TargetPlatform.android).build(
            PlatformButton(Theme.of(context).platform).buildPlatformButton(
              () {
                // print('android');
                print('hello');
              },
              Text('Click'),
            ),
            // // PlatformButton(TargetPlatform.iOS).build(
            // PlatformButton(Theme.of(context).platform).buildPlatformButton(
            //   () {
            //     print('ios');
            //   },
            //   Text('Click'),
            // ),
          ],
        ),
      ),
    );
  }
}
