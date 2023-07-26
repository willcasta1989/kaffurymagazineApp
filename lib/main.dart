import 'package:flutter/material.dart';
import 'pag_1.dart';
import 'pag_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      routes: {
        '/pag_1': (context) => PageOne(),
        '/pag_2': (context) => PageTwo(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1D1B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: Color(0xFF1D1D1B),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      color: Color(0xFF1D1D1B),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                'assets/KLM-blanco.png',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                'assets/porta-kfm.jpeg',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              color: Color.fromARGB(0, 204, 26, 26),
                              padding: EdgeInsets.all(20),
                              child: Center(
                                child: Text(
                                  'Prueba nuestra aplicación kaffury magazine y disfruta de contenido exclusivo',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 233, 29, 29),
                                    fontSize: 20,
                                    fontFamily: 'Arial',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Color(0xFFE11F26),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/pag_1');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFE11F26),
                                  padding: EdgeInsets.all(5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Text(
                                  'Prueba gratuita',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily:
                                        'Arial', // Cambiar por la fuente deseada
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
