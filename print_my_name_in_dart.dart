import 'dart:io';
// This is a simple Dart code that greets a user.
void main() {
  // Ask users their name
  print("What is your name?");

  // Receive user's name as input
  String? userName = stdin.readLineSync();

  // Prints a greeting for the user
  print("Hello $userName, you\'re awesome!!!");
}
