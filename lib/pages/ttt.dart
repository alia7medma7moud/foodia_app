//dropdown_with_validation.dart

import 'package:flutter/material.dart';

class DropdownExample extends StatefulWidget {
  const DropdownExample({Key? key}) : super(key: key);

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  final formKey = GlobalKey<FormState>();
  var chosenValue;
  List<String> gameList = ["Handball", "Volleyball", "Football", "Badminton"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown with validation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          

        ],
      ),
    );
  }
}

