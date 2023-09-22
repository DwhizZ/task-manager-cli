///This function displays details of task created, i have incorporated 
///exeption handling measures into it to ensure smooth usage of its functionality.
///
/// It prompts the user to enter the index of the task they want
/// to view. It then checks if the provided index is valid and within the
/// range of available tasks. If the index is valid, the task details are
/// displayed, including the title, description, and due date.
/// 
/// The user is also asked if they want to delete the task. If the user
/// confirms deletion ('yes'), the task is removed from the list and status
/// saved to the JSON file. If the user declines deletion ('no'), the
/// function exits. If the user provides invalid input, they are notified
/// of the invalid input.

import 'package:saheed_ulti_task_manager/load_task.dart';
import 'dart:io';
import 'package:saheed_ulti_task_manager/save_task.dart';


void viewTaskDetails() {
    stdout.write('Enter the task index: ');
  final input = stdin.readLineSync();
  final index = int.tryParse(input!);


  if (index == null || index < 0 || index >= tasks.length) {
    print('Invalid task index..try again');
    return;
  }
  final task = tasks[index];
  print('Task Details:');
  print('Title: ${task['title']}');
  print('Description: ${task['description']}');
  print('Due Date: ${task['dueDate']}');

  stdout.write('Do you want to delete this task? (yes/no): ');    //if you intend to delete your task from list
  final deleteConfirmation = stdin.readLineSync()?.toLowerCase();

  if (deleteConfirmation == 'yes') {
    tasks.removeAt(index);
    saveTasks(tasks);
    print('Task deleted successfully.');
  } else if (deleteConfirmation == 'no') {
    print('exit');
  } else {                            //this extra else statement handles invalid and null input exceptions.
    print('invalid input, accepted input is \'yes\' or \'no\' ');  
  }

}