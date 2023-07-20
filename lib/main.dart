import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
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
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                'assets/KLM-blanco.png',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
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
                              color: Colors.transparent,
                              padding: EdgeInsets.all(15),
                              child: Center(
                                child: Text(
                                  'Prueba nuestra aplicación kaffury magazine y disfruta de contenido exclsivo',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 233, 29, 29),
                                    fontSize: 20,
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
                  Expanded(
                    flex: 2,
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
                                  // Lógica del botón de "Registrarse"
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFE11F26),
                                  padding: EdgeInsets.all(5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Text(
                                  'Registrarse',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily:
                                        'Arial', // Cambiar por la fuente deseada
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Color(0xFFE11F26),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Lógica del botón de "Prueba sin registrarte"
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFE11F26),
                                  padding: EdgeInsets.all(5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Text(
                                  'Prueba sin registrarte',
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
