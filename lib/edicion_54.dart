import 'package:flutter/material.dart';

class Edicion54 extends StatefulWidget {
  const Edicion54({super.key});

  @override
  _Edicion54State createState() {
    return _Edicion54State();
  }
}

class _Edicion54State extends State<Edicion54> {
  int _imageIndex = 0;
  final List<String> _imageAssets = [
    'assets/edicion_54/ed54_1.png',
    'assets/edicion_54/ed54_6.png',
    'assets/edicion_54/ed54_7.png',
    'assets/edicion_54/ed54_8.png',
    'assets/edicion_54/ed54_10.png',
    'assets/edicion_54/ed54_11.png',
    'assets/edicion_54/ed54_14.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 219, 28, 28),
        title: const Text('Edición 54'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(_imageAssets[_imageIndex]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Botón rojo
                ),
                onPressed: () {
                  setState(() {
                    _imageIndex--;
                    if (_imageIndex < 0) {
                      _imageIndex = _imageAssets.length - 1;
                    }
                  });
                },
                child: const Text('Anterior'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Botón rojo
                ),
                onPressed: () {
                  setState(() {
                    _imageIndex++;
                    if (_imageIndex >= _imageAssets.length) {
                      _imageIndex = 0;
                    }
                  });
                },
                child: const Text('Siguiente'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
