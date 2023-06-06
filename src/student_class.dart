
class Student{
  var name;
  var roll;

  Student(var name , var roll){
    this.name = name;
    this.roll = roll;
  }
  showDetails(){
    print('Name: ${name} and Roll : ${roll}');
  }

}



void main(){
  Student obj  = new Student("sourav",111);
  obj.showDetails();

}