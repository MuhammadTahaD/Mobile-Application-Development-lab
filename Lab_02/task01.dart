import 'dart:io';

void main() {
  final List<String> tasks = [];
  bool running = true;

  while (running) {
    _displayMenu();
    final String? input = stdin.readLineSync();
    final int? option = int.tryParse(input?.trim() ?? '');

    switch (option) {
      case 1:
        _addTask(tasks);
        break;
      case 2:
        _viewTasks(tasks);
        break;
      case 3:
        _removeTask(tasks);
        break;
      case 4:
        running = false;
        print('Exiting To-Do App. Goodbye!');
        break;
      default:
        print('Invalid option. Please choose a number between 1 and 4.');
        break;
    }
    print(''); // Add a blank line for better readability between menu cycles
  }
}

/// Displays the main menu options to the user.
void _displayMenu() {
  print('TASK 1: Build a Simple To-Do List App');
  print('------------------------------------');
  print('1. Add a task');
  print('2. View tasks');
  print('3. Remove a task');
  print('4. Exit');
  stdout.write('Choose an option: ');
}

/// Adds a new task to the provided list.
/// Prompts the user for a task description and adds it if not empty.
void _addTask(List<String> tasks) {
  stdout.write('Enter the task: ');
  final String? taskDescription = stdin.readLineSync();

  if (taskDescription != null && taskDescription.trim().isNotEmpty) {
    tasks.add(taskDescription.trim());
    print('Task added.');
  } else {
    print('Task description cannot be empty. Task not added.');
  }
}

/// Displays all tasks currently in the provided list.
/// If the list is empty, it informs the user.
void _viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks in the list.');
  } else {
    print('Your To-Do List:');
    for (var i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }
  }
}

/// Removes a task from the provided list based on its number (1-indexed).
/// Displays tasks first, then prompts for the task number.
/// Includes validation for the input number.
void _removeTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks to remove.');
    return;
  }

  _viewTasks(tasks); // Show tasks first so the user knows which number to enter.

  stdout.write('Enter the number of the task to remove: ');
  final String? input = stdin.readLineSync();
  final int? taskNumber = int.tryParse(input?.trim() ?? '');

  if (taskNumber != null && taskNumber > 0 && taskNumber <= tasks.length) {
    final String removedTask = tasks.removeAt(taskNumber - 1);
    print('Task "$removedTask" removed.');
  } else {
    print('Invalid task number. Please enter a number between 1 and ${tasks.length}.');
  }
}
