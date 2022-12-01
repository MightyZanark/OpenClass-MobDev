import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Hello World', home: LoginPage());
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF5038BC),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(15))),
              height: 450,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 40),
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('Ristek',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    LoginForm()
                  ])),
          Container(
              margin: EdgeInsets.only(top: 25),
              child: ElevatedButton(
                  onPressed: () {},
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
                  )))
        ],
        // onPressed: () {
        //   Navigator.push(context,
        //       MaterialPageRoute(builder: (context) => const ProfilePage()));
        // },
      ),
    );
  }
}

const username = Text('Username',
    textAlign: TextAlign.left,
    style: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white));

const password = Text('Password',
    textAlign: TextAlign.left,
    style: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white));

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.only(top: 40),
        margin: EdgeInsets.only(left: 20, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [username],
            ),
            // Spacer(flex: 2),
            TextFormField(
              decoration: InputDecoration(),
            ),
            Row(
              children: [password],
            )
          ],
        ));
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400,
        color: Color(0xFF5038BC),
        child: Row(),
      ),
    );
  }
}
