void main() {
  Man man = Man(name: "Youssef", age: 25, height: 180, weight: 85);
  Woman woman = Woman(name: "Walaa", age: 22, height: 150, weight: 85);

  print("This is a man perfect Weight ${man.perfectWeight}");
  print("This is a woman perfect Weight ${woman.perfectWeight}");
}

mixin PerfectWeight {
  double calculatePerfectWeight(double heightInCentimeter) {
    return heightInCentimeter - 100;
  }
}

class Human with PerfectWeight {
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

  double get perfectWeight => calculatePerfectWeight(heightInCentimeter);

}

class Man extends Human with PerfectWeight {
  Man({
    required String name,
    required int age,
    required double height,
    required double weight,
  }) : super(name, age, height, weight);


}

class Woman extends Human with PerfectWeight{
  Woman({
    required String name,
    required int age,
    required double height,
    required double weight,
  }) : super(name, age, height, weight);

}
