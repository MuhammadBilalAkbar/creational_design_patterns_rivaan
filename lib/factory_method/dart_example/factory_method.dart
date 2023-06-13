import 'factory_method2.dart';

/// Creational design patterns are concerned with the way of creating objects. They provide various
/// object creation mechanisms.
///These designs patterns are used when a decision must be made at the time of instantiation of a class.
/// (i.e., creating an object of a class)

/// Factory method is to define an interface for creating an object, but we let subclasses decide
/// which class to instantiate.
/// Factory method lets a class defer instantiation to subclasses.

/// Factory method code can be written in two ways:
/// one is the abstract class itself.
/// other is creating a class for itself.

enum EmployeeType {
  programmer,
  boss,
  hr,
}

abstract interface class Employee {
  void work();

  /// There are two types of constructors in dart.
  /// A generative constructor which is a normal constructor.
  /// Second is the factory constructor. Factory constructor has looser constraints but generative
  /// does not have. In factory, you need to return an instance that is the same type as the class.
  /// With factory constructor, we can't extend the class, we must implement the class and it acts
  /// as interface. If we use extend, it will act like a base class.
  /// Following is factory method pattern:
  // factory Employee(String type) {
  factory Employee(EmployeeType type) {
    switch (type) {
      // case 'programmer':
      case EmployeeType.programmer:
        return Programmer();
      case EmployeeType.hr:
        return HRManager();
      case EmployeeType.boss:
        return Boss();
      default:
        return Error();
    }
  }
}

class Programmer implements Employee {
  @override
  void work() {
    print('coding an app');
  }
}

class HRManager implements Employee {
  @override
  void work() {
    print('recruiting people');
  }
}

class Boss implements Employee {
  @override
  void work() {
    print('leading people');
  }
}

class Error implements Employee {
  @override
  void work() {
    print('Error');
  }
}
