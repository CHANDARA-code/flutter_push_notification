Future <void> main(List <String> args) async{
  print("========= Program start runing =========");
  await runAllasynctask();
  print("======== Program end runing =========");
}
Future <void> runAllasynctask() async{
  await task1(1);
  await task2(3);
  await task3(2);
}
Future<void> task1(int seconds) async{
  final startTime = DateTime.now();
  print("Time: $startTime Loading task 1 for $seconds seconds");
  await Future.delayed(Duration(seconds: seconds));
  print("Task 1 completed ${seconds}");
}
Future<void> task2(int seconds) async{
  final startTime = DateTime.now();
  print("Time $startTime Loading task 2 for $seconds seconds");
  await Future.delayed(Duration(seconds: seconds));
  print("Task 2 completed ${seconds}");
}
Future<void> task3(int seconds) async{
  final startTime = DateTime.now();
  print("Time $startTime Loading task 3 for $seconds seconds");
  await Future.delayed(Duration(seconds: seconds));
  print("Task 3 completed ${seconds}");
}