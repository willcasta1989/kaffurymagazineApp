import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Página Dos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contenido de la Página Dos',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                // Lógica para volver a la Página Uno
                Navigator.pop(context);
              },
              child: const Text('Volver a Página Uno'),
            ),
          ],
        ),
      ),
    );
  }
}
