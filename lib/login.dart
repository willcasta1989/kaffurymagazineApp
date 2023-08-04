import 'package:flutter/material.dart';
import 'regis.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login / Registro'),
          backgroundColor: Colors.red,
        ),
        body: LoginBody(),
        backgroundColor: Colors.grey[300],
      ),
    );
  }
}

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Lógica para realizar la autenticación
            },
            style: ElevatedButton.styleFrom(primary: Colors.red),
            child: Text('Iniciar Sesión'),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/regis');
            },
            child: Text('Registrarse',
                style: TextStyle(color: Color.fromARGB(255, 201, 56, 56))),
          ),
        ],
      ),
    );
  }
}
