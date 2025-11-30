void main(List<String> args){
  List<String> feature = [];
  feature.addAll(["Dark Mode", "Push Notification", "Chat support"]);
  feature.insert(0, "Login Screen");
  feature.remove("Chat support");
  feature.sort();

  print('The first feature the team should work on is : ${feature.first}');
  print('The last feature the team should work on is : ${feature.last}');
  print('the total of feature is : ${feature.length}');

}