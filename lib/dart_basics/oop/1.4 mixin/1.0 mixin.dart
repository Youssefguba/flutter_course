void main() {

  Man man = Man(name: "Youssef", age: 25, height: 180, weight: 85);
  Woman woman = Woman(name: "Walaa", age: 22, height: 150, weight: 85);

  print("This is a man perfect Weight ${man.calculatePerfectWeight()}");
  print("This is a woman perfect Weight ${woman.calculatePerfectWeight()}");


}

// What if i need to use function with the same implementation in many classes.
// the solution in /* Mixin */
// TODO Mixin next section (1.1)

// First create a Super class that have a common attributes.
class Human {
  final String name;
  final int age;
  final double heightInCentimeter;
  final double weightInKiloGram;

  Human(
    this.name,
    this.age,
    this.heightInCentimeter,
    this.weightInKiloGram,
  );
}

class Man extends Human {
  Man({
    required String name,
    required int age,
    required double height,
    required double weight,
  }) : super(name, age, height, weight);

  double calculatePerfectWeight() {
    return super.heightInCentimeter - 100;
  }
}

class Woman extends Human {
  Woman({
    required String name,
    required int age,
    required double height,
    required double weight,
  }) : super(name, age, height, weight);

  double calculatePerfectWeight() {
    return super.heightInCentimeter - 100;
  }
}
