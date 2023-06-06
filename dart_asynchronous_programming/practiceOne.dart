void main(){
  print('Start');
  printData();
  print('End');
}

void printData() async {
  var data = await middleFunction();
  print(data);
}
Future<String> middleFunction(){
  return Future.delayed(Duration(seconds: 4),()=> "hello");
}