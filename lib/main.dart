import 'package:flutter/material.dart';
import 'package:flutter_membuat_form_checkbox_dll/module/tutorial_state_managemant/tutorial_state_managemant_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Valadasi Form",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TutorialStateManagemantView(),
    );
  }
}

