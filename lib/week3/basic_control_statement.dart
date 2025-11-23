import 'dart:io';
void main(List <String> args){
  int ageInputArgs;
  stdout.write("Please enter your age: ");
  String? ageInputString = stdin.readLineSync();
  if(ageInputString == null){
   throw Exception("Input must not be null");
  }else{
    ageInputArgs = int.parse(ageInputString);
    if(ageInputArgs >= 18){
      print("You are eligible to vote");
    }else{
      print("You are not eligible to vote");
    }
  }
}