///This function handles saving of task data  to my Json file 

///
/// It takes a list of tasks and converts it to a JSON format.
/// It then writes the JSON data to the specified file location, which is
/// used to store the task information. If the operation is successful,
/// a success message is printed to the console. In case of an error,
/// an handled error message is printed.

import 'dart:io';
import 'dart:convert';
import 'package:saheed_ulti_task_manager/load_task.dart';


//this saves tasks
void saveTasks(List<Map<String, dynamic>> tasks) {
  final File file = File(taskFilePath);
  final jsonData = jsonEncode(tasks);

  try {
    file.writeAsStringSync(jsonData);
    print('Tasks saved successfully.');
  } catch (e) {
    print('Error saving tasks: $e');
  }
}



