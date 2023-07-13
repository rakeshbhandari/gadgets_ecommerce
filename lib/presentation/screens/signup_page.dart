import '../widgets/long_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0),
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
                  text: 'Signup with google',
                  color: Colors.white,
                  textColor: Colors.black,
                ),
                const Padding(padding: EdgeInsets.all(7)),
                LongButton(
                  onPressed: () {},
                  text: 'Signup with email',
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter email',
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text('Phone number'),
            const Padding(padding: EdgeInsets.all(1)),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter phonenumber',
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text('Password'),
            const Padding(padding: EdgeInsets.all(1)),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter password',
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            LongButton(
              onPressed: () {},
              text: 'Signup',
              color: const Color(0xFFCED55B),
              textColor: Colors.black,
            ),
            // const Padding(padding: EdgeInsets.only(bottom: 60)),
            const SizedBox(height: 50),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                  onPressed: () {
                    Get.toNamed("/login",);
                  },
                  child: Text(
                    'Already have an acccount? Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red[700]),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
