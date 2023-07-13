import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/long_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14.0, top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.max,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Hello User"),
                Text(
                  "WELCOME",
                  style: TextStyle(fontSize: 27),
                ),
                Padding(padding: EdgeInsets.fromLTRB(10, 50, 100, 20)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LongButton(
                  onPressed: () {},
                  text: 'Login with google',
                  color: Colors.white,
                  textColor: Colors.black,
                ),
                const Padding(padding: EdgeInsets.all(7)),
                LongButton(
                  onPressed: () {},
                  text: 'Login with email',
                  color: Colors.white,
                  textColor: Colors.black,
                ),
                const Padding(padding: EdgeInsets.all(12)),
                const Text(
                  'or',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const Padding(padding: EdgeInsets.all(12))
              ],
            ),
            const Text('Email'),
            const Padding(padding: EdgeInsets.all(1)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter username',
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text('Password'),
            const Padding(padding: EdgeInsets.all(1)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter password',
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            LongButton(
              onPressed: () {
                Get.offNamed('/homepage');
              },
              text: 'Login',
              color: const Color(0xFFCED55B),
              textColor: Colors.black,
            ),
            // const Padding(padding: EdgeInsets.only(bottom: 60)),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[500]),
                    )),
                TextButton(
                    onPressed: () {
                      Get.toNamed("/signup");
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red[700]),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
