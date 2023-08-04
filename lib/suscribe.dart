import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Impide que el usuario pueda regresar a la página anterior
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 219, 28, 28),
          title: Text('Suscripción'),
        ),
        body: Container(
          color: Colors.grey[800],
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Image.asset(
                'assets/KLM-blanco.png', // Agrega la ruta correcta de la imagen
                width: 300,
                height: 150,
              ),
              SizedBox(height: 3),
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        'Básica',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[200],
                        onPrimary: Colors.blue[300],
                        shadowColor: Colors.blue[100],
                        minimumSize: Size(100, 100),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/ligin');
                      },
                      child: Text(
                        'Media',
                        style: TextStyle(
                          color: Color.fromARGB(255, 241, 239, 239),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow[700],
                        onPrimary: Colors.yellow[800],
                        shadowColor: Colors.yellow[200],
                        minimumSize: Size(150, 150),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        'Premium',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          decoration: TextDecoration.underline,
                          decorationThickness: 1,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple[200],
                        onPrimary: Colors.purple[300],
                        shadowColor: Colors.pink[100],
                        minimumSize: Size(180, 180),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
