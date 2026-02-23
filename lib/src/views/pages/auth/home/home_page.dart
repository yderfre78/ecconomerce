import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/carrito.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const Text('SUPER TIENDA',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 100),
            
                 const Text('Bienvenido',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 20),

            Container(
              width: MediaQuery.of(context).size.width * 0.8,
         
              child: OutlinedButton(
                onPressed: () {
                  context.go('/login');
                },
                child: const Text('Login',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FilledButton(onPressed: () {}, child: Text('Registro')),
          ],
        ),
      ),
    );
  }
}
