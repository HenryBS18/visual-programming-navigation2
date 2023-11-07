import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Object? name = ModalRoute.of(context)!.settings.arguments;
    String text = name != null || name != '' ? 'Your Name: ${name.toString()}' : 'Please go back and fill the Name field';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Back")),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
