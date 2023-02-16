import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    final names = ['Joao', 'Maria', 'Joaquim'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curso Flutter'),
      ),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                final name = names[index];
                return ListTile(
                  title: Text(name),
                );
              }
            ),
          ),
    );
  }
}