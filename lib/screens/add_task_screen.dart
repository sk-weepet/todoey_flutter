import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  String newTaskTitle;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        // child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w300,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                // print(newText);
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              onPressed: () {
                print('Flatbutton');
                addTaskCallback(newTaskTitle);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
        // ),
      ),
    );
  }
}
