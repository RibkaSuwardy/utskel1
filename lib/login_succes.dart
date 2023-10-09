import 'package:flutter/material.dart';



class Login_Succes extends StatelessWidget {
  const Login_Succes ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          LoginSuccess(),
        ]),
      ),
    );
  }
}

class LoginSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 414,
          height: 896,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.14, -0.99),
              end: Alignment(-0.14, 0.99),
              colors: [Color(0xFF377CC8), Color(0xFF438883)],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 8,
                top: 6,
                child: Opacity(
                  opacity: 0.10,
                  child: Container(
                    width: 420,
                    height: 890,
                    decoration: BoxDecoration(),
                  ),
                ),
              ),
              Positioned(
                left: 65,
                top: 451,
                child: Text(
                  'Login Berhasil!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: -1.80,
                  ),
                ),
              ),
              Positioned(
                left: 130,
                top: 308,
                bottom: 20,
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 10.37, vertical: 8.33),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Icon(
                          Icons.check,
                          size: 120,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
