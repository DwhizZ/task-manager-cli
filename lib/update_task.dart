///This function handles updating details of existing tasks in the application.
///
/// The function first checks if the provided task [index] is valid, ensuring it falls
/// within the range of available tasks. If the index is invalid, an error message
/// is displayed, and no changes are made.
///
/// If the index is valid, the task details are updated with the new values, and
/// the updated task list is saved to the JSON file using the [saveTasks] function.
///
/// It further provides feedback to the user, indicating whether the task was
/// updated successfully.

import 'package:saheed_ulti_task_manager/load_task.dart';
import 'package:saheed_ulti_task_manager/save_task.dart';

void updateTask(int index, String title, String description, DateTime dueDate) {
  if (index < 0 || index >= tasks.length) {
    print('Invalid task index.');
    return;
  }

  final task = tasks[index];
  task['title'] = title;
  task['description'] = description;
  task['dueDate'] = dueDate.toIso8601String();
  saveTasks(tasks);                           //saves the newly updated tasks
  print('Task updated successfully');
}