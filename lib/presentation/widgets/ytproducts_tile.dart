import 'package:flutter/material.dart';

productTile() {
  return Stack(
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.only(left: 20),
        height: 180,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey[200],
          // image: const DecorationImage(
          //   image: AssetImage('assets/youtube.png'),
          //   fit: BoxFit.fill,
          // )
        ),
      ),
      // Positioned(
      //   // top: 2,
      //   // left: 6,
      //   // bottom: 2,
      //   // right: 0,
      //   child: Align(
      //     alignment: Alignment.topCenter,
      //     child: Image.asset(
      //       'assets/headset.png',
      //       fit: BoxFit.fill,
      //       height: 100,
      //     ),
      //   ),
      // ),
      Container(
        height: 100,
        width: 120,
        alignment: AlignmentDirectional.center,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/youtube.png'))),
      ),
      Positioned(
        top: 10,
        right: 10,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
          color: Colors.green,
        ),
      ),
      Positioned(
        bottom: 10,
        left: 10,
        right: 10,
        child: Container(
          height: 80,
          width: 100,
          padding: const EdgeInsets.only(left: 4, right: 10, bottom: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'USB microphone',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text('\$200'),
                SizedBox(height: 5),
                Text('4.5 (200 Reviews)'),
              ],
            ),
          ),
        ),
      )
    ],
  );
}
