import 'dart:io';
void main(List <String> args){
  int moneyInput;
  stdout.write("Please enter spent: ");
  String? spendMoneyString = stdin.readLineSync();
  if(spendMoneyString == null){
    throw Exception("Input must not be null");
  }
  moneyInput = int.parse(spendMoneyString);
  print(
      moneyInput >= 500 ? "VIP" :
      moneyInput >= 300 ? "Gold" :
      moneyInput >= 100 ? "Silver" : "Normal"
  );
}