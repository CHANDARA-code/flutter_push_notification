
Future<void> main(List <String> args) async {
  print("--- App Starting ---");
  await Future.delayed(Duration(seconds: 2));
   int total = await runAllAsyncTasks(0);
  print("--- App Finished $total ---");
}
Future<int> runAllAsyncTasks(int total) async {
   total = 3;
  await newLoad(total);
  await userDataLoad(total);
  await weatherLoad(total);
  total += total;
  return total;
}
Future<void> newLoad(int seconds) async{

  await Future.delayed(Duration(seconds: seconds));
  print("News loaded.");
}
Future<void> userDataLoad(int seconds) async{
  await Future.delayed(Duration(seconds: seconds));
  print("User data loaded.");
}
Future<void> weatherLoad(int seconds) async{
  await Future.delayed(Duration(seconds: seconds));
  print("Weather data loaded.");
}
