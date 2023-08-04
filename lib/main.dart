import 'package:flutter/material.dart';
import 'package:kaffury_magazine_app/edicion_53.dart';
import 'regis.dart';
import 'suscribe.dart';
import 'pag_1.dart';
import 'edicion_54.dart';
import 'edicion_52.dart';
import 'login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreen(),
      routes: {
        '/pag_1': (context) => const PageOne(),
        '/suscribe': (context) => PageTwo(),
        '/edicion_53': (context) => Edicion53(),
        '/edicion_54': (context) => const Edicion54(),
        '/edicion_52': (context) => const Edicion52(),
        '/login': (context) => LoginPage(),
        '/regis': (context) => const RegisterPage(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D1B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFF1D1D1B),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      color: const Color(0xFF1D1D1B),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image.asset(
                                'assets/KLM-blanco.png',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image.asset(
                                'assets/porta-kfm.jpeg',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              color: const Color.fromARGB(0, 204, 26, 26),
                              padding: const EdgeInsets.all(20),
                              child: const Center(
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
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: const Color(0xFFE11F26),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/pag_1');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFE11F26),
                                  padding: const EdgeInsets.all(5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: const Text(
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
