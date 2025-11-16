import 'dart:io';
void main(List<String> agrs){
  int moneyInput;
  stdout.write("Please enter spent: ");
  String? spendMoneyString = stdin.readLineSync();
  if(spendMoneyString == null){
    throw Exception("Input must not be null");
  }
  moneyInput = int.parse(spendMoneyString);
  if(moneyInput >= 500){
    print(" They are \"VIP\"");
  }else if(moneyInput >= 300){
    print(" They are \"Gold\"");
  }
  else if(moneyInput >= 100) {
    print(" They are \"Silver\"");
  }
}