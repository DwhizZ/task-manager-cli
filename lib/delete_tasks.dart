/// this function handles task deletion in my application,
/// I have configured the code to auto save after a task is deleted.

import 'package:saheed_ulti_task_manager/load_task.dart';
import 'package:saheed_ulti_task_manager/save_task.dart';
import 'dart:io';


void deleteTask() {
  stdout.write('Enter the task index to delete: ');
  final input = stdin.readLineSync();
  final index = int.tryParse(input!);

  if (index == null || index < 0 || index >= tasks.length) {
    print('Invalid task index.');
    return;
  }

  tasks.removeAt(index);
  print('Task deleted successfully.');
  saveTasks(tasks);                  //saves update after deletion.
  
  
}
