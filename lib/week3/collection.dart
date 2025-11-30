// import 'dart:io';
// void main(List <String> args){
//   var scope = [1,3,5,7,9];
//   print("Scope List: ${scope.length}");
//   final highscore = scope.last;
//   print("High Score: $highscore");
//
//    List<String> playList = ["Hello", "World"];
//   print("Initial PlayList: $playList");
//   playList.add("Song A");
//   playList.remove("World");
//   playList.sort();
//   print("Updated PlayList: $playList");
//
//  var dialTems = List<double>.filled(5, 0.0);
//  dialTems[0] = 98.6;
//   dialTems[1] = 99.1;
//   dialTems[2] = 100.2;
//   print("Dial Items: $dialTems");
//
//   List<String> shop=[];
//   shop.add("Bread");
//   shop.add("Milk");
//   shop.add("Eggs");
//   print("Shopping List: $shop");
//
//   shop.remove("Milk");
//   print("Updated Shopping List: $shop");
//   shop.add("Butter");
//   shop.sort();
//   print("Final Shopping List: $shop");
//
//
//   var allGrades = <String>["class A", "class B", "class C", "class D"];
//   var scopes = <int>[85, 90, 78, 92];
//   String log(int scopes){
//     if(scopes >= 90){
//       return "A";
//     } else if (scopes >= 80){
//       return "B";
//     } else if (scopes >= 70){
//       return "C";
//     } else {
//       return "D";
//     }
//   }
//   for(var grade in allGrades){
//     print("Grade List: $grade");
//     print("Grade: $grade");
//   }
//  for (int i = 0; i < scopes.length; i++){
//    print("Studnet ${i+1} scope is ${scopes[i]} and grade is ${log(scopes[i])}");
//  }
//  if(scopes.contains(78)){
//    print("scope List contains 78");
//  }
//  else {
//    print("scope List does not contains 78");
//  }
//  while(true){
//    int num = 0;
//    stdout.write("Enter a number: ");
//    num = int.parse(stdin.readLineSync()!);
//    if(num<10){
//      print("Number is Less than 10, try again.");
//
//    }
//    else if (num == 10){
//      print("Number is equal to 10, exiting loop.");
//    }
//    if(num == 0){
//      break;
//    }
//  }
// }

/**
 *
 * What is a List?
 *
 * In Dart, the most common type of collection is the list.
 * A list is an ordered group of objects, similar to an array
 * in other programing languages.
 *
 * Key characteristics of a List include:
 *
 * - Ordered: it maintains the insertion order of elements. the first item you add stay at the begging, the second item is next and so on.
 *
 * - Indexable: Each element has a zero-based index, which you can use to access it directly.
 *
 * - Allow Duplicates: A list can contain the same value multiple times.
 *
 *
 */

/**
 *
 * List<String> fruit;
 * fuite = ['Apple','Orange'];
 *
 * List<int> groupNumber;
 * groupNumber = [12, 23, 32];
 */

/**
 * Common Properties
 *
 * - length: returns the the number of elements in the list
 * - first: returns the first element (if the list is empty it will throws an error)
 * - last: returns the last element (if the list is empty , it will throws an error)
 * - isEmpty: returns true if the list contains no elements
 * - isNotEmpty: returns true if the list contains at least one element.
 * - reversed: returns an iterable with the element in revers order.
 */

/**
 * Core Manipulation Methods
 */

/*
* Adding Elements
- add(value):
- addAll(collection)
- insert(index, value)
*
*/

/*
* Removing Elements
- remove(value)
- removeAt(index)
- removeLast()
- clear()
*
*/

/*
* Other Userful Methods
- sort(): sorts the list in place. By defualt, it sorts in ascending order.
- indexOf(value): Return the index of the first occurrence of a value, or -1 if it's not found.
*
*/

void main() {
  var scores = [12, 45, 56, 89, 99];

  print("Number of scores: ${scores.length}");
  final higthScore = scores.last;
  print("Highest score $higthScore");

  /**
   *
   * Modifying a Growable List
   */

  List<String> playlist = ["Song A", "Song B", "Song C"];
  print("Initial playlist: $playlist");
  playlist.add("Song D");
  print("After adding: $playlist");
  playlist.remove('Song B');
  print("After removing: $playlist");
  playlist.sort();
  print("Sorted playlist: $playlist");

  /**
   * Fixed-Length list
   */

  var dailyTemps = List<double>.filled(3, 0.0);
  print("Initial Temps: $dailyTemps");
  dailyTemps[0] = 15.5;
  dailyTemps[1] = 18.5;
  dailyTemps[2] = 16.7;
  print("Updated temps: $dailyTemps");

  /**
   * Example1
   */

  List<String> shoppingCart = [];
  shoppingCart.add('Apples');
  shoppingCart.add('Bananas');
  shoppingCart.add('Bread');
  print("Current cart: $shoppingCart");
  shoppingCart.remove('Bananas');
  print("Final cart: $shoppingCart");

  /**
   * Example2
   */

  var allGrades = ['Grade A', 'Grade B', 'Grade C', 'Grade D', 'Grade E'];
  var scoreList = [40, 55, 23, 60, 75, 34, 99, 80, 79];

  String getGrade(int score) {
    String grade;
    switch (score) {
      case >= 90:
        grade = "Grade A";
        break;
      case >= 80:
        grade = "Grade B";
        break;
      case >= 70:
        grade = "Grade C";
        break;
      case >= 60:
        grade = "Grade D";
        break;
      case >= 50:
        grade = "Grade E";
        break;
      default:
        grade = "You are failed";
        break;
    }
    return grade;
  }

  for (var grade in scoreList) {
    print('Grade: ${getGrade(grade)}');
  }
}
