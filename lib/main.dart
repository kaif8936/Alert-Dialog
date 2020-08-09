import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Dialog(),
      ),
    );
  }
}

class Dialog extends StatelessWidget {
  void popupDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      actions: [
        FlatButton(
          child: Text('CANCEL'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
      title: Text('UC BROWSER'),
      content: Text('Do you want to uninstall this app?'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      elevation: 9,
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlineButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [Text('Uninstall'), Icon(Icons.delete)],
        ),
        onPressed: () {
          popupDialog(context);
        },
      ),
    );
  }
}
