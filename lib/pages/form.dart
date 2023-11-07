import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a TextEditingController to control the input value
    TextEditingController nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Name",
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String name = nameController.text;

              Navigator.pushNamed(context, '/profile', arguments: name);
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
