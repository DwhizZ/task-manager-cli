///I have created this fuction to serve as a user manual for anyone using my 
///application, its printed in the console on pressing the help command.
///you can also refer to (toRunApp.txt) in my bin folder for further instruction on running this
///application.

void displayHelpMessage() {
  print('SAHEED\'S ULTIMATE Task Manager - User Instructions');
  print('---------------------------------');
  print('Available Commands:');
  print('');

  // Command: Add a new task
  print('1. Add a New Task:');
  print(
      '   Usage: dart run saheed_ulti_task_manager.dart add "Task Title" "Task Description" "Due Date"');
  print(
      'task tittle and task description are to be in quotes while date shouldn\'t');
  print(
      '   check sample below\nExample: dart run task_manager.dart add "Finish Report" "Write summary" 2023-09-30');
  print('');

  // Command: View task list
  print('2. View Task List:');
  print('   Usage: dart run saheed_ulti_task_manager.dart list');
  print('');

  // Command: View task details
  print('3. View Task Details:');
  print('   Usage: dart run saheed_ulti_task_manager.dart detail [Task Index]');
  print('   Example: dart run saheed_ulti_task_manager.dart detail 0');
  print('');

  // Command: Update a task
  print('4. Update a Task:');
  print(
      '   Usage: dart run saheed_ulti_task_manager.dart update [Task Index] "New Title" "New Description" "New Due Date"');
  print(
      '   Example: dart run saheed_ulti_task_manager.dart update 0 "Revised Title" "Updated description" "2023-10-10"');
  print('');

  // Command: Delete a task
  print('5. Delete a Task:');
  print('   Usage: dart run saheed_ulti_task_manager.dart delete [Task Index]');
  print('   Example: dart run saheed_ulti_task_manager.dart delete 0');
  print('');

  print('Additional Information:');
  print('- Task Index: The index of a task in the list (0-based).');
  print('- Due Date Format: Use yyyy-mm-dd (e.g., "2023-09-30").');
  print('- Use double or single quotes  around task title, description, and non around due date.');
  print('');

  print('Example Workflow:');
  print('1. Add tasks using the "add" command.');
  print('2. View the list of tasks using the "list" command.');
  print('3. View details of a specific task using the "detail" command.');
  print('4. Update a task using the "update" command.');
  print('5. Delete a task using the "delete" command.');

  print('');
}
