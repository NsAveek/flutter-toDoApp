import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxOnCheckedChange(newCheckedVal) {
    setState(() {
      isChecked = newCheckedVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy Milk',
        style: TextStyle(decoration: isChecked?TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: TaskCheckBox(
        isChecked: isChecked,
        onCheckedChange: checkBoxOnCheckedChange,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function onCheckedChange;

  TaskCheckBox({this.isChecked, this.onCheckedChange});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: onCheckedChange,
    );
  }
}

//
//class TaskCheckBox extends StatefulWidget {
//
//  @override
//  _TaskCheckBoxState createState() => _TaskCheckBoxState();
//}
//
//class _TaskCheckBoxState extends State<TaskCheckBox> {
//  bool isChecked = false;
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      activeColor: Colors.lightBlueAccent,
//      value: isChecked,
//      onChanged: (newValue){
//        setState(() {
//          isChecked = newValue;
//        });
//      },
//    );
//  }
//}
