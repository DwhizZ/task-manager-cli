/// I have created this fuction to handle every posible exceptions that may occcur
/// while running my task manager application.

import 'package:saheed_ulti_task_manager/load_task.dart';
import 'package:saheed_ulti_task_manager/save_task.dart';
import 'package:saheed_ulti_task_manager/create_tasks.dart';
import 'package:saheed_ulti_task_manager/update_task.dart';
import 'dart:io';

void addTaskerror() {
  try {
    print('Add a New Task');
    stdout.write('Enter task title: ');
    final title = stdin.readLineSync();
    stdout.write('Enter task description: ');
    final description = stdin.readLineSync();
    stdout.write('Enter task due date (yyyy-mm-dd): ');
    final dueDate = stdin.readLineSync();

    // Validate inputs (e.g., check if dueDate is a valid date)
    if (title == null || description == null || dueDate == null) {
      throw FormatException('Invalid input: All fields must be provided.');
    }

    // Parse the dueDate as a DateTime
    final parsedDueDate = DateTime.tryParse(dueDate);
    if (parsedDueDate == null) {
      throw FormatException('Invalid due date format. Please use yyyy-mm-dd.');
    }

    createTask(title, description, parsedDueDate);
    print('\nTask added successfully!.');
  } catch (e) {
    print(
        'Error adding task, check the help menu to view valid inputs format: $e');
  }
}

void updateTaskerror() {
  try {
    stdout.write('Enter the task index: ');
    final input = stdin.readLineSync();
    final index = int.tryParse(input!);

    if (index == null || index < 0 || index >= tasks.length) {
      throw ArgumentError(
          'Invalid task index..use the \'HELP command\' to see accepted inputs');
    }

    print('Update Task Details');
    stdout.write('Enter new task title: ');
    final newTitle = stdin.readLineSync();
    stdout.write('Enter new task description: ');
    final newDescription = stdin.readLineSync();
    stdout.write('Enter new task due date (yyyy-mm-dd): ');
    final newDueDate = stdin.readLineSync();

    updateTask(index, newTitle!, newDescription!, DateTime.parse(newDueDate!));
    saveTasks(tasks);

    print('Task updated successfully.');
  } catch (e) {
    print('Error updating task: $e');
  }
}
