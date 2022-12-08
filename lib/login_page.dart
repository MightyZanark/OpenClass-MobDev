import 'package:flutter/material.dart';
import 'custom_text_field.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Color(0xFF5038BC),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(15))),
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(30),
                child: Column(children: [
                  const SizedBox(height: 50),
                  const Text('Ristek',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const SizedBox(height: 50),
                  CustomTextField(name: 'Username', controller: nameController),
                  const SizedBox(height: 20),
                  CustomTextField(
                      name: 'Password',
                      controller: passController,
                      obscureText: true),
                ])),
            Container(
                margin: const EdgeInsets.only(top: 25),
                child: ElevatedButton(
                  onPressed: () {
                    if (nameController.text == "Ristek" &&
                        passController.text == "123456") {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    } else {
                      const SnackBar snackbar = SnackBar(
                          content: Text('Invalid Username / Password',
                              textAlign: TextAlign.center));
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xFF5038BC)),
                      minimumSize:
                          MaterialStatePropertyAll<Size>(Size(235, 45))),
                  child: const Text(
                    'LOGIN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ))
          ],
        ));
  }
}
