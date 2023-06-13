// import 'dart:io';
//

void main(){
  performTask();
}

void performTask() async {

  task1();
  String? data = await task2();
  task3(data);


}


void task1(){
  print('perform task One');
}


Future<String?> task2() async{
  String? value;

  Duration duration =  Duration(seconds:3);
  await Future.delayed(duration,(){
    print('perform task Two');
    value = "from task2";
  });
   return value;
}


void task3(String? data){
  print('perform task Three Data from ${data}');
}