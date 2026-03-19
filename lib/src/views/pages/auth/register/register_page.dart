import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 212, 219, 223), Colors.blueAccent],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1,
                left: MediaQuery.of(context).size.width * 0.1,
              ),
              child: Text(
                'Comienza Creando Tu',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.01,
                left: MediaQuery.of(context).size.width * 0.1,
              ),
              child: Text(
                'Cuenta',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 0.72,
              width: MediaQuery.of(context).size.width * 0.95,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.12,
                left: MediaQuery.of(context).size.width * 0.08,
                right: MediaQuery.of(context).size.width * 0.08,
              ),
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                      suffixIcon: Icon(Icons.person, color: Colors.blueAccent),
                    ),
                  ),
                    TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Apellido',
                      suffixIcon: Icon(Icons.person, color: Colors.blueAccent),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'telefono o Correo ',
                      suffixIcon: Icon(Icons.email, color: Colors.blueAccent),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      suffixIcon: Icon(Icons.lock, color: Colors.blueAccent),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirmar Contraseña',
                      suffixIcon: Icon(Icons.lock, color: Colors.blueAccent),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width ,

                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 212, 219, 223),
                          Colors.blueAccent,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: FilledButton(
                      onPressed: () {
                        context.go('/register');
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.transparent,
                      ),
                      child: Text(
                        'REGISTRARSE',
                        style: TextStyle(
                          fontSize: 22,
                          color: const Color.fromARGB(255, 2, 43, 156),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Ya tienes Cuenta?',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(bottom: 10),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Registrate',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(bottom: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
