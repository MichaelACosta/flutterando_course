import 'package:flutter/material.dart';
import 'package:my_app/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    var controller = context.dependOnInheritedWidgetOfExactType<HomeController>()!;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Text('Flutterando ${controller.value}'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('click');
        },
      ),
    );
  }
}
