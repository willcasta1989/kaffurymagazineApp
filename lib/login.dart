import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Dos'),
      ),
      body: Center(
        child: Text(
          'Estamos en la página dos',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
