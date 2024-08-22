import 'dart:io';

//add , remove and view thier task
void main() {
  var to_do_list = [];
  //add an item
  while (true) {
    print("|--------------------------------|");
    print("|          To_Do_List            |");
    print("| What do you want to do:        |");
    print("| 1.Add a Task                   |");
    print("| 2.Remove a Task                |");
    print("| 3.view a task                  |");
    print("| 4.Exit                         |");
    print("|--------------------------------|");

    stdout.write('enter your choice: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        // adding a task
        print("Enter a task :");
        String listA = stdin.readLineSync()!;
        to_do_list.add(listA);
        print("Task Added");
        break;
      case '2':
        // removing a task
        if (to_do_list.isNotEmpty) {
          print("which Task to be removed");
          int index = int.parse(stdin.readLineSync()!);
          if (index > 0 && index <= to_do_list.length) {
            var removedTask = to_do_list.removeAt(index - 1);
            print("Task $removedTask removed");
          } else {
            print("invalid Task number");
          }
        } else {
          print("The list is empty , enter some tasks");
        }
        break;
      case '3':
        // viewing the task
        if (to_do_list.isEmpty) {
          print("No Tasks in the list, Enter some task");
        } else {
          print("your Tasks:");
          for (int i = 0; i < to_do_list.length; i++) {
            print('${i + 1}.${to_do_list[i]}');
          }
        }
        break;
      case '4':
        // exit the loop
        print("exiting");
        return;
      default:
        print('Invalid Choice , please enter your choice again');
    }
  }
}
