import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  // set up the button
  Widget coolButton = FlatButton(
      child: Text("Cool"),
      onPressed: () => Navigator.of(context, rootNavigator: true).pop());

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Tresspassing"),
    content: Text("This is out of your jurisdiction"),
    actions: [
      coolButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
