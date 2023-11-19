import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final style = ElevatedButton.styleFrom(
      minimumSize: const Size(330, 40),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 100, 40, 10),
              child: Container(
                height: 220,
                child: const Image(image: AssetImage('images/pic2.png')),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: style,
              child: const Text("Login"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 10, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " No Account Yet?",
                    style: TextStyle(
                        fontSize: 14,
                        color: theme.colorScheme.onPrimaryContainer),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: const Text("Create one"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
