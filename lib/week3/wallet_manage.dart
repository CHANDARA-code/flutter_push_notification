import 'dart:io';
void main(List<String> args){
  int amount = 0;
  int total = 0;
    List<int> walletstore = [];
    String? wallIput;
while(wallIput != "exit") {
  stdout.write("Enter your wallet type (add, undo, list, exit): ");
  wallIput = stdin.readLineSync();
  switch (wallIput) {
    case "add":
      stdout.write("Enter amount: ");
      amount = int.parse(stdin.readLineSync()!);
      total += amount;
      walletstore.addAll([amount]);
      print("Added $amount ");
    case "undo":
      stdout.write("Remove: ");
      amount = int.parse(stdin.readLineSync()!);
      total -= amount;
      walletstore.remove([total]);
    case "list":
      print("----- Current item -----");
      for(var i=0; i<walletstore.length; i++){
        print(" ${walletstore[i]}");
      }
      break;
    case "exit":
      print("----- Final Wallet Summary -----");
      print("Total Spent: $total");
      print("Status: ✅ Within Budget");
      break;
    default:
      stdout.write("Invalid option. Please try again.\n");
  }
if(total > 1000) {
  print("Status: ❌ Over Budget");
}
else {
  print("Status: ✅ Within Budget");
}
switch(total >= 500) {
  case true:
    print("They are \"VIP\"");
    break;
  case false:
    switch(total >= 300) {
      case true:
        print("They are \"Gold\"");
        break;
      case false:
        switch(total >= 100) {
          case true:
            print("They are \"Silver\"");
            break;
          case false:
            print("They are \"Normal\"");

    int nuumm = 0;
    do{
stdout.write("enter a number:");
    }while(nuumm != 0);
    {
      print("Exiting loop.");
      print("what is your name?");
      print("how old are you");
      print("What is your hobby?");

    }
            break;
        }
        break;
    }
    break;
}
}}
