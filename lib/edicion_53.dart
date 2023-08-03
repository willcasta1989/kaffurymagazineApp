import 'package:flutter/material.dart';

class Edicion53 extends StatefulWidget {
  @override
  _Edicion53State createState() => _Edicion53State();
}

class _Edicion53State extends State<Edicion53> {
  int _imageIndex = 0;
  final List<String> _imageAssets = [
    'assets/edicion_53/ed53_1.png',
    'assets/edicion_53/ed53_2.png',
    'assets/edicion_53/ed53_3.png',
    'assets/edicion_53/ed53_4.png',
    'assets/edicion_53/ed53_5.png',
    'assets/edicion_53/ed53_6.png',
    'assets/edicion_53/ed53_7.png',
    'assets/edicion_53/ed53_8.png',
    'assets/edicion_53/ed53_9.png',
    'assets/edicion_53/ed53_10.png',
    'assets/edicion_53/ed53_11.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
