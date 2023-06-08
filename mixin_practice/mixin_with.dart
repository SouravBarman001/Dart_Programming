mixin ElectricCar{
  void carName(){
    print('Tesla');
  }
}


mixin PetrolCar{
  void carName(){
    print('Nissan');
  }
}

class Car with PetrolCar,ElectricCar{

}

main(){
  var obj = Car();
  obj.carName();
}