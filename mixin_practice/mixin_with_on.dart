abstract class Animal {
  late String category;
  late String mammalType;

  Animal(this.category,this.mammalType);
  printDetails(){
    print('Category : $category \n MammanlType : $mammalType');
  }
  void swim();
  void walk();
  void fly();
}
mixin CanSwim on Animal{
  @override
  void swim(){
    print('$mammalType can swim');
  }
}

mixin CanWalk on Animal{
  @override
  void walk(){
    print('$mammalType can walk');
  }
}

mixin CanFly on Animal{
  @override
  void fly(){
    print('$mammalType can fly');
  }
}

class Mammal extends Animal with CanSwim,CanFly,CanWalk{
  Mammal(String category,String mammalType) : super(category,mammalType);
}

class Dolphine extends Mammal with CanSwim{
  Dolphine(super.category, super.mammalType);

}

main(){
  Dolphine obj = new Dolphine('Mammal','Dolphine');
  obj.printDetails();
  obj.swim();
  obj.fly();

}