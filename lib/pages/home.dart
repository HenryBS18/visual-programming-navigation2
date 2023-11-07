import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              },
              child: const Text("Form Page"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                try {
                  Navigator.pushNamed(context, '/lol');
                } catch (e) {
                  showSnackBar(context);
                }
              },
              child: const Text("Settings page"),
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Page doesn't exist!"),
        duration: Duration(seconds: 3),
      ),
    );
  }
}
