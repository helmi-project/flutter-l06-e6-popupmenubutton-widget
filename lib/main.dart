import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lesson 06: PopupMenuButton'),
          actions: <Widget>[
            PopupMenuButton(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return item.choices.map((choice) {
                  return PopupMenuItem(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Welcome to Android ATC'),
            ],
          ),
        ),
      ),
    );
  }

  void choiceAction(choice) {
    if (choice == item.Inbox) {
      print('Inbox');
    } else if (choice == item.SentItems) {
      print('Sent Items');
    } else if (choice == item.JunckEmail) {
      print('Junck E-mail');
    } else if (choice == item.SignOut) {
      print('Sign Out');
    }
  }
}

class item {
  static const Inbox = 'Inbox';
  static const SentItems = 'Sent Items';
  static const JunckEmail = 'Junck E-mail';
  static const SignOut = 'Sign Out';

  static const List choices = [Inbox, SentItems, JunckEmail, SignOut];
}
