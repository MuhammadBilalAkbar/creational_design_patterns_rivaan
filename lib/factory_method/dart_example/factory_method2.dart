import 'factory_method.dart';

/// This separate method is recommended for large project
class FactoryMethod {
  // Factory Method Patterns
   Employee getEmployee(String type) {
    switch (type) {
      case 'programmer':
        return Programmer();
      case 'hr':
        return HRManager();
      case 'boss':
        return Boss();
      default:
        return Programmer();
    }
  }
}