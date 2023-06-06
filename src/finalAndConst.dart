// void main(){
//    const age = 5 + 10;
//
//   print('My age is ${age}');
// }
/*
1. When To Use Const
If you know the value at compile-time, choose const for e.g. const a = 100;.
2. When To Use Final
If you don’t know the value at compile-time, choose final.
If you want a network request that can’t be changed, choose final.
If you want to get some values from the database, choose final.
If you want to read a local file, choose final.
*/

main(){
  final date = DateTime.now(); // Possible
 // const date = DateTime.now(); // Not Possible


  print(date);
}
