import 'login_succes.dart';
import 'package:flutter/material.dart';



class Login_Screen extends StatelessWidget {
  const Login_Screen ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(), // Mencegah guliran
          child: Column(
            children: [
              SizedBox(height: 24), // Margin di atas
              LoginScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed.
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 414,
          height: 896,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: -788,
                top: -314,
                child: Container(
                  width: 1859.08,
                  height: 1827.97,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1003,
                        top: 1005,
                        child: Container(
                          width: 184,
                          height: 73,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login_Succes()),
                              );

                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF469B88), // Ubah warna latar belakang menjadi Color(0xFF469B88)
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50), // Tambahkan radius border sesuai keinginan Anda
                              ),

                              minimumSize: Size(200, 50), // Sesuaikan ukuran tombol sesuai kebutuhan Anda
                            ),
                            child: Text(
                              'Masuk',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16, // Sesuaikan ukuran teks sesuai kebutuhan Anda
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0.90,
                                letterSpacing: -0.32,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 370, // Ganti top dengan 350
                child: Stack(
                  children: [
                    Container(
                      width: 355,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5E5E5),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Username atau Email',
                        style: TextStyle(
                          color: Color(0xB700B495),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: -0.90,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: 0,
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '',
                          contentPadding: EdgeInsets.only(left: 16),
                        ),
                        style: TextStyle(
                          color: Color(0xB700B495),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.15,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 25,
                top: 465, // Ganti top dengan 441
                child: Stack(
                  children: [
                    Container(
                      width: 355,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFFE5E5E5),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Kata Sandi',
                        style: TextStyle(
                          color: Color(0xB700B495),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: -0.90,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: 0,
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '',
                          contentPadding: EdgeInsets.only(left: 16),
                        ),
                        style: TextStyle(
                          color: Color(0xB700B495),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.15,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 152,
                top: 180,
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF377CC8),
                    fontSize: 42,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.02,
                    letterSpacing: -0.84,
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 230,
                child: Text(
                  'Masuk ke Akun Anda',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF979797),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.12,
                    letterSpacing: -0.36,
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 608,
                child: Text(
                  'Lupa Kata Sandi? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
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
