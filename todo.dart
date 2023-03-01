import 'dart:io';
import 'dart:collection';

main() {
  var todoList = new Map();
  print("""1.Create new todo list
  2.open todo list
  3.delete todo list
  4.Add items to existing todo list""");
  String? k = stdin.readLineSync();
  int ch;
  if (k != null) {
    ch = int.parse(k);
  } else {
    ch = 6;
  }
  if (ch == 1) {
    createTodo(todoList);
  } else if (ch == 2) {
  } else if (ch == 3) {
  } else if (ch == 4) {
  } else {}
}

void createTodo(Map todoList) {
  print("please enter the nubmer of items:");
  String? k = stdin.readLineSync();
  int sn;
  if (k != null) {
    sn = int.parse(k);
  } else {
    sn = 0;
  }
  List lst = List.filled(sn + 1, null);
  print("please enter the title of todo:");
  var title = stdin.readLineSync();
  int n = 1;
  while (sn > 0) {
    stdout.write("$n .");
    lst[n] = stdin.readLineSync();
    n++;
    sn--;
  }
  todoList[title.toString()] = lst;
}
void openTodo(map todoList){
  print()
}
