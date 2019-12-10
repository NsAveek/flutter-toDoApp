import 'package:flutter/material.dart';

/*
* Stateful Widget => Can have properties that can vary
*                 => Allow setState() to update the screen
* Stateless Widget => Can not have properties that can vary
*                  => There is no state to set, so setState() not applicable
*
* No need to have two Stateless widget at the same place rather we should marge it wherever possible
*
* */


class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallBack});

  void checkBoxOnCheckedChange(newCheckedVal) {
  //    setState(() {
  //      isChecked = newCheckedVal;
  //    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isChecked? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      )
    );
  }
}
//TaskCheckBox(
//isChecked: isChecked,
//onCheckedChange: checkBoxOnCheckedChange,
//),
//class TaskCheckBox extends StatelessWidget {
//  final bool isChecked;
//  final Function onCheckedChange;
//
//  TaskCheckBox({this.isChecked, this.onCheckedChange});
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      activeColor: Colors.lightBlueAccent,
//      value: isChecked,
//      onChanged: onCheckedChange,
//    );
//  }
//}

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
