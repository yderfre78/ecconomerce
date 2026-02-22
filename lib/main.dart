import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
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
                  'Hola',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Text(
                  'Logeate!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  
                  ),
                ),
              ),

              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      
                      decoration: InputDecoration(
                        hintText: 'Email',
                        suffixIcon: Icon(Icons.email,
                        color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        
                        suffixIcon: Icon(Icons.lock,
                         color: Colors.blueAccent,
                        ),
                        
                      ),
                      obscureText: true,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.centerRight,
                      child: Text('Olvidaste tu password?'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.only(top: 30),
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
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child: const Text(
                          'INGRESAR',
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'No tiene Cuenta?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        'Registrate ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
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
