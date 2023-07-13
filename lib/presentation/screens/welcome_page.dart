import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/long_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.center,
            child: Image.asset('assets/welcome.jpg', fit: BoxFit.fill),
          ),
          const Positioned(
              bottom: 150,
              left: 20,
              child: Text(
                'we are here for you',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                ),
              )),
          const SizedBox(
            height: 100,
          ),
          Positioned(
              bottom: 100,
              left: 20,
              right: 20,
              child: LongButton(
                  onPressed: () {
                    Get.offNamed("/login");
                  },
                  color: Colors.orange,
                  text: 'Get started')),
        ],
      ),
    );
  }
}
