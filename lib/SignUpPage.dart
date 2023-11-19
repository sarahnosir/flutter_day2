import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
            const Padding(
              padding: const EdgeInsets.fromLTRB(40, 80, 40, 0),
              child: SizedBox(
                height: 220,
                child: Image(
                  image: AssetImage('images/pic2.png'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(
                labelText: 'Email',
              )),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
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
              child: const Text("Create Your Acccount"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " Alerady have an account?",
                    style: TextStyle(
                        fontSize: 14,
                        color: theme.colorScheme.onPrimaryContainer),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text("login"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
