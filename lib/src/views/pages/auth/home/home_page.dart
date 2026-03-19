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
            const Text(
              'SUPER TIENDA',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 100),

            const Text(
              'Bienvenido',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),

            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.03,
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(),
              child: OutlinedButton(
                onPressed: () {
                  context.go('/login');
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.03,
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.05,
              child: FilledButton(
                onPressed: () {
                  context.go('/register');
                },
                style: FilledButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  'REGISTRO',
                  style: TextStyle(
                    fontSize: 22,
                    color: const Color.fromARGB(255, 2, 43, 156),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.width * 0.3,
                bottom: MediaQuery.of(context).size.width * 0.03,
              ),
              child: const Text(
                'Ingresa con redes Sociales',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Image.asset('assets/img/icon_facebook.png'),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 35,
                  height: 35,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Image.asset('assets/img/icon_twitter.png'),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 35,
                  height: 35,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Image.asset('assets/img/icon_instagram.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
