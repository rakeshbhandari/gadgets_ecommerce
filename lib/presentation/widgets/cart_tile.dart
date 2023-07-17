import 'package:flutter/material.dart';

cartTile() {
  return Card(
    color: const Color(0xffD1D2CD),
    elevation: 6,
    child: Container(
      height: 140,
      width: 366,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            // margin: const EdgeInsets.only(bottom: 10),
            height: 180,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Image.asset(
                  'assets/ipad.png',
                  height: 110,
                  width: 110,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Apple iPad Pro 2020',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '\$200',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 20),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle_outline_sharp)),
                  const Text('1'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_circle_outline_sharp)),
                  const SizedBox(width: 100),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        backgroundColor: Colors.white),
                    child: const Text(
                      'Remove',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
