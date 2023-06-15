import 'package:flutter/material.dart';

class SecondPAge extends StatefulWidget {
  const SecondPAge({super.key});

  @override
  State<SecondPAge> createState() => _SecondPAgeState();
}

class _SecondPAgeState extends State<SecondPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('SecondPAge'),
      ),
    );
  }
}
