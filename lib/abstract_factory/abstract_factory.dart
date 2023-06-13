import 'package:flutter/material.dart';
import 'platform_indicator.dart';
import 'platform_button.dart';

/// Abstract factory is a way to provide an interface for creating families of related
/// or dependent objects without specifying their concrete classes.
/// It is a super set of factory method.
/// Abstract factory is factory of factories. like a wrapper around factories.
///
/// There are two approaches while using abstract factory.
/// First one is creating an abstract class.
///
/// Disadvantages
/// Code becomes more complicated. Abstraction is everywhere.
///
/// Advantages
/// It is alternative to facade pattern. It can be used along with bridge. It can also be implemented as a
/// Singleton.
abstract interface class AbstractFactory {
  Widget buildPlatformButton(
      BuildContext context, String text, VoidCallback onPressed);

  /// All the functions created in this abstract class are going to have BuildContext.
  Widget buildPlatformIndicator(BuildContext context);
}

class AbstractFactoryImplementation implements AbstractFactory {
// class AbstractFactoryImplementation {
  @override
  Widget buildPlatformButton(
      // static Widget buildPlatformButton(
      BuildContext context,
      String text,
      VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform).buildPlatformButton(
      onPressed,
      Text(text),
    );
  }

  @override
  Widget buildPlatformIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform)
        .activityProgressIndicator();
  }
}
