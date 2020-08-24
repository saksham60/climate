import 'dart:io';

void main() {
  performTasks();
}

void performTasks()  async{
  task1();
  String t2= await task2();
  task3(t2);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2()  async {
  Duration d =Duration(seconds:3);
//  sleep(d);
  String result;
  await Future.delayed(d,(){
     result = 'task 2 data';
    print('Task 2 complete');});
  return result;
}

void task3(String t2) {
  Duration d =Duration(seconds:4);

  String result = 'task 3 data';
  print('Task 3 complete $t2');
//  String result = 'task 3 data';
//  print('Task 3 complete');
}