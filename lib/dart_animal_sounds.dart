/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_animal_sounds_base.dart';

// TODO: Export any libraries intended for clients of this package.

class Animal {
  Animal(this.sound);
  String sound;
  void makeSound() {
    print('Generic sound');
  }
}

class Dog extends Animal {
  Dog(super.sound);
}

class Labrador extends Dog {
  Labrador(super.sound);
  @override
  void makeSound() {
    print('Loud Bark with enthusiasm');
  }
}

class Beagle extends Dog {
  Beagle(super.sound);
}




/*
Practice Question 1: Animal Sounds
Task:
Create a class named Animal with a String field named
 sound and a method named makeSound, 
 which uses sound to print a message.
Create a subclass of Animal named 
Dog and then create two Dog subclasses named Labrador and Beagle.
Override makeSound in the Labrador class to vary the output.
 */