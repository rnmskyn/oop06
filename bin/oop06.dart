import 'package:oop06/oop06.dart';

void globalFly(Object thing) {
  if (thing is CanFly) {
    thing.fly();
  }
}

void main(List<String> arguments) {
  Bird bird = Bird("Woodstock");
  Pika pika = Pika("Pfeifi");
  Goldfish goldfish = Goldfish("Washington");
  globalFly(bird);
  globalFly(pika);
  globalFly(goldfish);
}
