import 'package:flutter/material.dart';

class Edicion52 extends StatefulWidget {
  const Edicion52({super.key});

  @override
  _Edicion52State createState() {
    return _Edicion52State();
  }
}

class _Edicion52State extends State<Edicion52> {
  int _imageIndex = 0;
  final List<String> _imageAssets = [
    'assets/edicion_52/ed52_1.png',
    'assets/edicion_52/ed52_7.png',
    'assets/edicion_52/ed52_8.png',
    'assets/edicion_52/ed52_9.png',
    'assets/edicion_52/ed52_15.png',
    'assets/edicion_52/ed52_16.png',
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
