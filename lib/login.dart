import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Dos'),
      ),
      body: const Center(
        child: Text(
          'Estamos en la página dos',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
