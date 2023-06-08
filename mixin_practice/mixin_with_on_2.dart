// class Animal {
//   late String category;
//   late String mammalType;
//
//   Animal(this.category,this.mammalType);
//   printDetails(){
//     print('Category : $category \n MammanlType : $mammalType');
//   }
// }


mixin CanSwim {

  void swim(){
    print('It can swim');
  }
}

mixin CanWalk{

  void walk(){
    print('It can walk');

  }
}

mixin CanFly{

  void fly(){
    print('It can fly');
  }
}

class Mammal{
late String category;
late String animalName;
Mammal(String category,String animalName){
  this.animalName = animalName;
  this.category = category;
}
printDetails(){
  print('category : $category');
  print('name : $animalName');
}
}


class Dolphine extends Mammal with CanSwim{

  Dolphine(String category,String animalName) : super(category,animalName);

}

class Dove extends Mammal with CanWalk,CanFly{

  Dove(String category,String animalName) : super(category,animalName);

}

main(){
  Dolphine obj = new Dolphine('Mammal','Dolphine');
  obj.printDetails();
  obj.swim();
print('----------------');
  Dove obj1 = new Dove('Bird','Dove');
  obj1.printDetails();
  obj1.fly();
  obj1.walk();




}