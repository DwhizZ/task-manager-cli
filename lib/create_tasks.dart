///this function executes task creation in my application.
///I have configured the code to ensure tasks are auto saved after creation.

///It allows users to add a new task to the task list. It prompts
/// the user to enter the task title, description, and due date, and then
/// saves the task to the list. The changes are automatically saved to the
/// JSON file.

import 'package:saheed_ulti_task_manager/load_task.dart';
import 'package:saheed_ulti_task_manager/save_task.dart';


void createTask(String title, String description, DateTime dueDate) {
  final task = {
    'title': title,                           
    'description': description,
    'dueDate': dueDate.toIso8601String(),
  };
  tasks.add(task);            //add task to tasks list
  saveTasks(tasks);           //saves task to .json file after creation
}
