import 'dart:io';
enum EnumColor {
  RED,
  GREEN,
  BLUE,
  INVALID
}
String? color;
void main(List<String> args){

  EnumColor enumColor = EnumColor.GREEN;
  switch(enumColor){
    case EnumColor.RED:
      print("You selected RED color");
      break;
    case EnumColor.GREEN:
      print("You selected GREEN color");
      break;
    case EnumColor.BLUE:
      print("You selected BLUE color");
      break;
    default:
      print("Invalid color selected");
  }
  //  final colrString = "GREEN";
  //
  // switch(colrString){
  //   case "RED":
  //     print("You selected RED color");
  //     break;
  //   case "GREEN":
  //     print("You selected GREEN color");
  //     break;
  //   case "BLUE":
  //     print("You selected BLUE color");
  //     break;
  //   default:
  //     print("Invalid color selected");
  // }

   // String getColorString(enumColor){
   //  switch(enumColor){
   //    case EnumColor.RED:
   //      return "red";
   //    case EnumColor.GREEN:
   //      return "green";
   //    case EnumColor.BLUE:
   //      return "blue";
   //    default:
   //      return "INVALID";
   //  }
   // }
   //  print("Color from function: ${getColorString(enumColor)}");


  String getColorString(enumColor){
    String color;
    switch(enumColor){
      case EnumColor.RED:
        color = "red";
      case EnumColor.GREEN:
        color = "green";
      case EnumColor.BLUE:
        color = "blue";
      default:
        color = "INVALID";
    }
    return color;
  }
  print("Color from function: ${getColorString(enumColor)}");

}