import 'package:flutter/material.dart';

@immutable // Immutable classes have copyWith method
class Person {
  final String firstName;
  final String lastName;
  final int age;
  final String nationality;
  final String email;

  const Person({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.nationality, // If you add it later, then how will you change data everywhere to copy.
    required this.email,
  });

  // Person clone() => Person(
  //       firstName: firstName,
  //       lastName: lastName,
  //       age: age,
  //       nationality: nationality,
  //       email: email,
  //     );

  /// Use copyWith instead of clone.
  Person clone() => copyWith(
        firstName: firstName,
        lastName: lastName,
        age: age,
        nationality: nationality,
        email: email,
      );

  /// copyWith method
  Person copyWith({
    String? firstName,
    String? lastName,
    int? age,
    String? nationality,
    String? email,
// do not write required because we may/can change only one property of person class.
  }) {
    return Person(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      nationality: nationality ?? this.nationality,
      email: email ?? this.email,
    );
  }
}

const person = Person(
    firstName: 'Muhammad',
    lastName: 'Bilal',
    age: 26,
    nationality: 'Pakistani',
    email: 'bilal@googlemail.com');

// /// how to clone `person` object?
// final person1 = Person(
//     firstName: 'Muhammad',
//     lastName: 'Bilal',
//     age: 26,
//     nationality: 'Pakistani'); // wrong
//
// final person2 = Person(
//   firstName: person.firstName,
//   lastName: person.lastName,
//   age: person.age,
//   nationality: person.nationality,
// ); // wrong
/// how to clone in hundred or thousand files???

// final person3 = person.clone(); // This is better method to clone.
final person3 = person.copyWith(); // This is best method to clone.
// print(person.firstName); // Prints Muhammad
// print(person3.firstName); // Prints Muhammad
