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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curso Flutter'),
      ),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                for(var i=0 ; i<10; i++)
                  Container(
                    width: double.infinity,
                    height: 80,
                    margin: const EdgeInsets.all(8),
                    color: Colors.red,
                  ),
              ],
              ),
          ),
      ),
    );
  }
}