
abstract class Animal{
  late String name;
  late double speed;

  Animal(this.name,this.speed);
  void run();
  void fly();
}

mixin CanRun on Animal{
  @override
  void run(){
    print('$name can run at the speed of $speed');
  }
  @override
  void fly(){
  }
}
mixin CanFly on Animal{
  @override
  void run(){
  }
  @override
  void fly(){
    print('$name can fly at the speed of $speed');

  }
}


class Dog extends Animal with CanRun{
 Dog(String name,double speed): super(name,speed);
}

class Bird extends Animal with CanFly{
  Bird(String name,double speed):super(name,speed);
}
main(){
  Dog obj = new Dog('Dog', 12.0);
  obj.run();
  Bird obj1 = new Bird('Doel',4.0);
  obj1.fly();


}