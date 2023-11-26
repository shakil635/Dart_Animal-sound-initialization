import 'package:dart_animal_sounds/dart_animal_sounds.dart';
import 'package:test/test.dart';

void main() {
  group('Animal Tests', () {
    test('Animal sound initialization', () {
      var animal = Animal('Generic sound');
      expect(animal.sound, equals('Generic sound'));
    });

    test('Animal makeSound method', () {
      var animal = Animal('Generic sound');
      expect(() => animal.makeSound(), prints('Generic sound\n'));
    });
  });

  group('Dog Tests', () {
    test('Dog is a subclass of Animal', () {
      var dog = Dog('Bark');
      expect(dog, isA<Animal>());
    });
  });

  group('Labrador Tests', () {
    test('Labrador is a subclass of Dog', () {
      var labrador = Labrador('Loud Bark');
      expect(labrador, isA<Dog>());
    });

    test('Labrador makeSound method override', () {
      var labrador = Labrador('Loud Bark');
      expect(() => labrador.makeSound(), prints('Loud Bark with enthusiasm\n'));
    });
  });

  group('Beagle Tests', () {
    test('Beagle is a subclass of Dog', () {
      var beagle = Beagle('Howl');
      expect(beagle, isA<Dog>());
    });
  });
}
