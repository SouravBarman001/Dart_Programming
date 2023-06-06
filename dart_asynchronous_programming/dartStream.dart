// src : https://dart-tutorial.com/asynchronous-programming/stream-in-dart/
// A stream is a sequence of asynchronous events representing multiple values that will arrive in the future.
// Stream class deals with sequences of events instead of single events.
// Stream has one or more listeners, and all listeners will receive the same value.
// Here yield returns the value from the stream. To use yield you have to use async*

// function that returns a stream
// Stream<String> getUserName() async* {
//   await Future.delayed(Duration(seconds: 1));
//   yield 'Mark';
//   await Future.delayed(Duration(seconds: 1));
//   yield 'John';
//   await Future.delayed(Duration(seconds: 1));
//   yield 'Smith';
// }
// function that returns a stream
Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Smith';
}


// Stream<String> getUserName() {
//   return Stream.fromIterable(['Mark', 'John', 'Smith']);
// }

// main function
void main() async {
  // you can use await for loop to get the value from stream
  await for (String name in getUserName()) {
    print(name);
  }
}