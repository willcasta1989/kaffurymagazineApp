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
    'assets/uno.png',
    'assets/dos.png',
    'assets/tres.png',
    'assets/cuatro.png',
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
