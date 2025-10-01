abstract class Animal {
  String name;
  Animal(this.name);
  void move(){
    print("I am moving");
  }
  void makeSound(){
    print("I am making a sound");
  }
}

abstract class CanFly {
  void fly();
}

abstract class CanWalk {
  void walk();
}

abstract class CanBreathUnderWater {
  void breath();
}

class Fish extends Animal {
  Fish(super.name);
}

class Goldfish extends Fish implements CanBreathUnderWater {
  Goldfish(super.name);
  @override
  void makeSound() {
    print("Hi, i am a goldfish, my name is $name. Nice to meet you!");
  }

  @override
  void breath() {
    print("I am breathing under water");
  }
}

class Pika extends Animal implements CanWalk {
  Pika(super.name);
  @override
  void makeSound() {
    print("Hi, i am a pika, my name is $name. Nice to meet you!");
  }
  @override
  void walk(){}
}

class Bird extends Animal implements CanWalk, CanFly{
  Bird(super.name);
  @override
  void walk() {
    print("I am walking");
  }
  @override
  void makeSound() {
    print("Hi, i am a bird and my name is $name!");
  }
  @override
  void fly() {
    print("I am $name and I am flying");
  }
}