import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();
  final _controllerUsername = TextEditingController();
  void signUserUp() async {
    void wrongEmailMessage() {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Incorrect Email'),
          );
        },
      );
    }

    void wrongPasswordMessage() {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Incorrect Password'),
          );
        },
      );
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: null,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Center(
                  //   child: Container(
                  //     margin: EdgeInsets.only(bottom: 80),
                  //     child: Image.asset('assets/images/NewHelpJuanLogo.png'),
                  //   ),
                  // ),
                  Container(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0079BD),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1),
                    child: Text(
                      '',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6E7191),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: TextField(
                      controller: _controllerEmail,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEBEBEB),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF6E7191),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: TextField(
                      controller: _controllerUsername,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEBEBEB),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Username",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF6E7191),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: TextField(
                      controller: _controllerPassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEBEBEB),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF6E7191),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 70),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            minimumSize: Size(100, 45),
                            textStyle: TextStyle(fontSize: 14),
                            primary: Color(0xFF0079BD),
                            onPrimary: Colors.white),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Questrial',
                              color: Colors.white),
                        ),
                        onPressed: () {
                          signUserUp();
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text(
                          "Already have an account?  ",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF6E7191)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: GestureDetector(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0079BD)),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
