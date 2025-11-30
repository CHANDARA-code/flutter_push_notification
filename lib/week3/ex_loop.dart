import 'dart:io';
var spaneMoney = 0;
var tortal = 0;
void main(List<String> args){

  do {
    stdout.write("Enter price spand money: ");
    spaneMoney = int.parse(stdin.readLineSync()!);
    if(spaneMoney < 0){
      print("Invalid input, please enter a valid amount.");
      continue;
    }
     tortal += spaneMoney;
  }
  while(spaneMoney != 0);
  {
    print("Total spand money: $tortal");
  }
}