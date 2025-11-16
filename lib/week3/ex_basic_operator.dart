void main(List<String> args) {
 int apple = 47;
 int box  = 8;
 int total = apple ~/ box; // integer division
 //double total = apple / box;
 print("I have: $apple apples");
  print("I can fill $total boxs");
  print("I will have ${apple % box} apples left over");


}