/// Prototype is to specify the kinds of objects to create using a prototypical instance, and create new
/// objects by copying this prototype. In simple words, prototype is cloning. We just create exact replica
/// of another object. We copy object's properties, functionalities into another object.
/// We have an instance of another class and based on that we are going to create objects.
///
/// Advantages
/// You can clone objects much faster and easily.
/// Disadvantages
/// There is no disadvantage because it just a purpose based code.
import 'package:flutter/material.dart';

import 'prototype1.dart';

class PrototypeHomePage extends StatelessWidget {
  const PrototypeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const person = Person(
        firstName: 'Muhammad',
        lastName: 'Bilal',
        age: 26,
        nationality: 'Pakistani',
        email: 'bilal@googlemail.com');
    final person3 = person.clone(); // This is better method to clone.
    // final person3 = person.copyWith(); // This is best method to clone.
    print(person.firstName); // Prints Muhammad
    print(person3.firstName); // Prints Muhammad
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
