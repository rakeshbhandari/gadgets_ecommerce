import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Explore ',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
        child: SizedBox(
          height: 400,
          // color: Colors.orange,
          child: Stack(children: <Widget>[
            const Text(
              'Popular now',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(left: 0, top: 49),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.black),
              height: 233,
              // width: 330,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Adjustable Office Chair',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 26),
                    const Text(
                      'Apple Workspaces',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 26),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFCED55B),),
                          child: const Text(
                            'View Details',
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.shopping_cart_checkout_rounded),
                          color: Colors.white,
                          // hoverColor: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                right: 8,
                top: 0,
                child: SizedBox(
                  // color: Colors.red,
                  height: 440,
                  width: 300,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('assets/chair.png', fit: BoxFit.cover
                        // height: 400,
                        // width: 300,
                        ),
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
