import 'package:flutter/material.dart';

browsingTile() {
  return Card(
    color: Colors.white,
    elevation: 6,
    child: Container(
      height: 140,
      width: 366,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            // margin: const EdgeInsets.only(bottom: 10),
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffDDDDDB),
            ),
            child: Stack(
              children: [
                Image.asset(
                  'assets/ipad.png',
                  height: 90,
                  width: 110,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 1,
                  right: 2,
                  child: IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Color(0xffCED55B),
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 80,
          ),
          const Column(
            children: [
              SizedBox(height: 10),
              Text(
                'Apple iPad Pro 2020',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text('4.5 (23 Reviews)'),
              SizedBox(height: 10),
              Text('\$200'),
            ],
          )
        ],
      ),
    ),
  );
}
