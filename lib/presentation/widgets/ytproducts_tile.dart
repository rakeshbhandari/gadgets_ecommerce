import 'package:flutter/material.dart';

productTile() {
  return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      padding: const EdgeInsets.all(4),
      // height: 220,
      // width: 150,
      //
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[200],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 5,
            left: 5,
            right: 5,
            child: Container(
              height: 100,
              width: 120,
              alignment: AlignmentDirectional.center,
              decoration: const BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                image: AssetImage('assets/youtube.png'),
              )),
            ),
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
              height: 90,
              width: 200,
              padding: const EdgeInsets.only(
                left: 4,
                right: 4,
                top: 4,
                bottom: 4,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Macbook Pro 2020 13 inch',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2),
                  Text('\$200'),
                  SizedBox(height: 2),
                  Text('4.5 (200 Reviews)'),
                ],
              ),
            ),
          )
        ],
      ));
}
