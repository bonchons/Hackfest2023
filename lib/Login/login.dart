import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackfest2023/Backend/auth_page.dart';
import 'package:hackfest2023/bnav.dart';
import 'package:hackfest2023/constants.dart';
import 'package:hackfest2023/Login/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  String? errorMessage = '';
  bool isLogin = true;

  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();

  void signUserIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Nav()));
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: ColorConstants.bgColor,
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
                  Center(
                      // child: Container(
                      //   margin: EdgeInsets.only(bottom: 100),
                      //   child: Image.asset('assets/images/HelpJuan Logo (2).png'),
                      // ),
                      ),
                  Container(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1),
                    child: Text(
                      '',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _controllerEmail,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
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
                      controller: _controllerPassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
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
                            primary: Colors.white,
                            onPrimary: Colors.white),
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Questrial',
                              color: Color(0xFF0079BD)),
                        ),
                        onPressed: () {
                          signUserIn();
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => Nav()));
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Text(
                          "Don't have an account?  ",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: GestureDetector(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
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
