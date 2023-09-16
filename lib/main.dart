import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Counter', home: MyScreen());
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyScreen createState() => _MyScreen();
}

class _MyScreen extends State<MyScreen> {
  int limit = 0;
  void countPlus() {
    setState(() {
      limit++;
    });
  }

  void countMinus() {
    setState(() {
      limit--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $limit'),
            OutlinedButton(onPressed: countPlus, child: const Text('Add')),
            OutlinedButton(onPressed: countMinus, child: const Text('Remove'))
          ],
        ),
      ),
    );
  }
}
