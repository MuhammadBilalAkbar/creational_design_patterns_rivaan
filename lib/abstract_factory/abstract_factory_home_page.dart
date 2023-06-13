import 'package:creational_design_patterns_rivaan/abstract_factory/abstract_factory.dart';
import 'package:flutter/material.dart';

class AbstractFactoryHomePage extends StatefulWidget {
  const AbstractFactoryHomePage({super.key});

  @override
  State<AbstractFactoryHomePage> createState() => _AbstractFactoryHomePageState();
}

class _AbstractFactoryHomePageState extends State<AbstractFactoryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AbstractFactoryImplementation().buildPlatformButton(
            // AbstractFactoryImplementation.buildPlatformButton(
              context,
              'Hello',
              () {
                print(Theme.of(context).platform);
              },
            ),
            AbstractFactoryImplementation().buildPlatformIndicator(context),
          ],
        ),
      ),
    );
  }
}
