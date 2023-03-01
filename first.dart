import 'dart:io';
void main(){
  var choice;
  do{
    print("""please select the operation to perfom:
             1.addition
             2.substraction
             3.division
             4.multiplication
             5.exit""");
      choice = int.tryParse(stdin.readLineSync() ?? "");
    switch(choice){
      case 1:{
        var numbers = takeInput();
        addition(numbers);
      } break;
      case 2:{
        var numbers =takeInput();
        substraction(numbers);
      } break;
      case 3:{
        var numbers =takeInput();
        division(numbers);
      } break;
      case 4:{
        var numbers = takeInput();
        multiplication(numbers);
      } break;     
    }
  }while(choice!=5);
}
List<dynamic> takeInput(){
  print("enter the first number:");
  List? numbers = List.filled(2, null, growable: false);
  String? a = stdin.readLineSync();
  if(a!=null){
    numbers[0]=int.parse(a);
  }
 // numbers[0] = int.tryParse(stdin.readLineSync() ?? "");
  print("enter the second number");
  String? b = stdin.readLineSync();
  if(b!=null){
    numbers[1]=int.parse(b);
  }
  //numbers[1] = int.tryParse(stdin.readLineSync() ?? "");
  return numbers;
}
void addition(List numbers){
  print(numbers[0]+numbers[1]);
}
void substraction(List numbers){
  print(numbers[0]-numbers[1]);
}
void multiplication(List numbers){
  print(numbers[0]*numbers[1]);
}
void division(List numbers){
  try{
    var ans = numbers[0]/numbers[1];
    print(ans);
  }
  on FormatException{
    print("dividing by zero");
  }
}