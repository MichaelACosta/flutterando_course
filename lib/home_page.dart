import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  final list = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/imgs/flutter-image.jpeg',
                fit: BoxFit.cover,
              )
            ),
            Container(
              color: Colors.black.withOpacity(0.6),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FlutterLogo(
                    size: 150,
                    style: FlutterLogoStyle.horizontal,
                    textColor: Colors.white,
                  ),
                  ElevatedButton(
                    onPressed: () { },
                    child: const Text('Entrar')
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
