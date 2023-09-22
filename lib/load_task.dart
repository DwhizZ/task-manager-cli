///this function handles loading of task and parsing tasks from Json file

import 'dart:io';
import 'dart:convert';

final String taskFilePath = 'tasks.json';   //path to my Json File.
List<Map<String, dynamic>> tasks = [];

List<Map<String, dynamic>> loadTasks() {
  final File file = File(taskFilePath);

  if (!file.existsSync()) {
    return [];   // Return an empty list if the file doesn't exist yet
  }
  try {
    final jsonData = file.readAsStringSync();
    final dynamic decodedData = jsonDecode(jsonData);

    if (decodedData is List<dynamic>) {
      return decodedData.cast<Map<String, dynamic>>();
    } else {
      return [];  // Return an empty list if the data format is invalid
    }
  } catch (e) {
    print('Error loading tasks: $e');
    return [];    // Return an empty list in case of any errors
  }

 }

  //alternative code path, i chose the earlier because it handles unforeseen exception scenarios better.

  // final File file = File(taskFilePath);

  // if (file.existsSync()) {
  //   final jsonData = file.readAsStringSync();
  //   final decodedData = jsonDecode(jsonData);
  //   if (decodedData is List<dynamic>) {
  //     tasks = List<Map<String, dynamic>>.from(decodedData);
  //   } else {
  //     print(
  //         'Error loading tasks: Invalid input format,kindly assess the help command'
  //         'to assist you on using this application');
  //   }
  // }













