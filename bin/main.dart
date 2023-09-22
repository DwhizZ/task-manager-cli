/// SAHEED AYOMIDE SULEIMAN, Dart assessment 2, (Conclase Academy).

///this is the entry point to my dart task manager console application,
///all custom functions imported are neatly organized in my "lib" folder with each fuctionality explained
///for your evaluation.
///
////// This application allows users to manage tasks, including adding new tasks,
/// listing existing tasks, viewing task details, updating task information, and deleting tasks.
///  
/// The application provides a command-line interface (CLI) for interacting with
/// tasks and is designed to be user-friendly.

import 'package:saheed_ulti_task_manager/load_task.dart';
import 'package:saheed_ulti_task_manager/save_task.dart';
import 'package:saheed_ulti_task_manager/task_details.dart';
import 'package:saheed_ulti_task_manager/view_tasks.dart';
import 'package:saheed_ulti_task_manager/user_manual.dart';
import 'package:saheed_ulti_task_manager/error_handler.dart';
import 'package:saheed_ulti_task_manager/delete_tasks.dart';
import 'dart:io';

List<Map<String, dynamic>> tasks = [];

void main(List<String> arguments) {
  loadTasksFromFile();

  print('SAHEED\'S ULTIMATE Task Manager');
  print('-------------------------------');

  while (true) {
    print('');
    stdout.write(
        'Enter a command (add, list, detail, update, delete, help, quit): ');
    final command = stdin.readLineSync()?.toLowerCase();

    switch (command) {
      case 'add':
        addTaskCommand();
        break;
      case 'list':
        viewTaskList();
        break;
      case 'detail':
        viewTaskDetailsCommand();
        break;
      case 'update':
        updateTaskCommand();
        break;
      case 'delete':
        deleteTaskCommand();
        break;
      case 'help':
        helpCommand(); //usage instructions
        break;

      case 'quit':
        saveTasks(tasks);
        exit(0);

      default:
        print(
            'Invalid command. Please use from the available command keys in the (...).');
    }
  }
}

//COMMANDS
void helpCommand() {
  displayHelpMessage();
}

void addTaskCommand() {
  addTaskerror();     //this fuction handles possible exceptions for the addTask command
}

void loadTasksFromFile() {
  loadTasks();
}

void viewTaskDetailsCommand() {
  viewTaskDetails();
}

void updateTaskCommand() {
  updateTaskerror();    //this fuction handles possible exceptions for the updateTask command
}

void deleteTaskCommand() {
  deleteTask();
}
