import 'dart:async';

import 'package:flutter/material.dart';
import 'suscribe.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  _PageOneState createState() {
    return _PageOneState();
  }
}

class _PageOneState extends State<PageOne> {
  int countdown = 10;

  void startCountdown() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      if (countdown == 0) {
        timer.cancel();
        // Aquí puedes agregar la lógica para regresar a la página inicial
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    PageTwo())); // Reemplaza "Login" con el nombre de tu clase de la página de inicio
      } else {
        setState(() {
          countdown--;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 219, 28, 28),
        title: const Text('Prueba gratuita'),
      ),
      body: Container(
        color: Color.fromARGB(255, 110, 100, 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: 300,
              height: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/edicion_54');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Revista Edición 54',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 100,
              height: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/edicion_52');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Revista Edición 52',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 100,
              height: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/edicion_53');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Revista Edición 53',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 50,
              height: 20,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  '${(countdown / 60).floor()} min ${(countdown % 60).toString().padLeft(2, '0')} sec',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
