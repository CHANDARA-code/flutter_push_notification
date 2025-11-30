import 'dart:io';
int amount = 0;
int total = 0;
List<int> walletstore = [];
Future<void> main(List <String> args) async{
  String? commend;
  do{
  print("Command (add, undo, list, exit:)");
  commend = stdin.readLineSync();

  switch(commend){
    case "add":

      total = await addWallet(total);
      break;
    case "undo":
      total = await undoWallet(total);
      break;
    case "list":
      await listWallet(total);
      break;
    case "exit":

    default:
      print("Invalid command.");
  }
}
  while(commend != "exit");
  await exit(total);
}
Future<int> addWallet(int total) async {
  stdout.write("Enter amount: ");
  amount = int.parse(stdin.readLineSync()!);
   total += amount;
  walletstore.addAll([amount]);
  await Future.delayed(Duration(seconds: 2));
  print("Saveing to clound...Done! (Save $amount)");
  return total;
}
Future<int> undoWallet(int total) async {
  int amount = 0;
  stdout.write("Remove: ");
  amount = int.parse(stdin.readLineSync()!);
  total -= amount;
  walletstore.remove([total]);
  await Future.delayed(Duration(seconds: 2));
  print("Removing from clound...Done! (Remove \$$amount)");
  return total;
}
Future<void> listWallet(int total) async {
  print("----- Fectching Current item -----");
  await Future.delayed(Duration(seconds: 2));
  print("Loading from clound... Done!");
  await Future.delayed(Duration(milliseconds: 200));
  for (var i = 0; i < walletstore.length; i++) {
    print(" \$${walletstore[i]}");
  }
}
Future<void> exit(int total) async{
  print("----- Final Wallet Summary -----");
  await Future.delayed(Duration(seconds: 2));
  print("Loading summary from clound... Done!");
  await Future.delayed(Duration(milliseconds: 200));
  print("Total Spent: \$$total");
  print("Status: ✅ Within Budget");
}









// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
//
// Future<void> main() async {
//   final stopwatch = Stopwatch()..start();
//   Map<String, dynamic> product = {};
//
//   print("--- App Starting ---");
//
//   // The blocking execution
//   product = await getProduct();
//
//   print("product: $product");
//   print("product: id: ${product['id']}");
//   print("product: title: ${product['title']}");
//
//   final schoolNew = fetchSchoolNews(); // Takes 3 seconds
//   final schoolNewValue = await schoolNew;
//   print("School New Vavle: $schoolNewValue");
//   await fetchUserData(); // Takes 2 seconds
//   await fetchWeather(); // Takes 3 seconds
//
//   stopwatch.stop();
//   print("stopwatch isRunning: ${stopwatch.isRunning}");
//   print("stopwatch instance: ${stopwatch.elapsed}");
//   print("--- App Loaded in ${stopwatch.elapsed.inSeconds} seconds ---");
// }
//
// // Mock API Functions
// Future<String> fetchSchoolNews() async {
//   await Future.delayed(Duration(seconds: 3)); // Calling Api
//   print("✔️ News Loaded");
//   return "News Data";
// }
//
// Future<Map<String, dynamic>> getProduct() async {
//   print("Loading product...");
//   final url = 'https://fakestoreapi.com/products/1';
//   final response = await http.get(Uri.parse(url));
//
//   if (response.statusCode == 200) {
//     print("Get Product Success");
//     return json.decode(response.body) as Map<String, dynamic>;
//   } else {
//     print("Cannot Get Product");
//     throw Exception('Failed to fetch product');
//   }
// }
//
// Future<String> fetchUserData() async {
//   await Future.delayed(Duration(seconds: 2));
//   print("✔️ User Data Loaded");
//   return "User Data";
// }
//
// Future<String> fetchWeather() async {
//   await Future.delayed(Duration(seconds: 3));
//   print("✔️ Weather Loaded");
//   return "Weather Data";
// }
