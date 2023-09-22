///This function handles displaying of all available tasks created and
///their respective index.
//// When the "list" command is entered in the console, this function is invoked to display
/// a list of tasks. The index displayed alongside each task enables you to track tasks
/// when using other commands like 'details,' 'delete,' and 'update.' These commands
/// require you to input the index of the task you intend to modify while running this
/// application in the console.

import 'package:saheed_ulti_task_manager/load_task.dart';

void viewTaskList() {
  loadTasks();
  if (tasks.isEmpty) {
    print('No tasks found.');
    return;
  }
  print('Here is a list of your available task(s):\n');
  for (var i = 0; i < tasks.length; i++) {
    final task = tasks[i];
    print('$i. ${task['title']} - Due: ${task['dueDate']}');
  }
}
