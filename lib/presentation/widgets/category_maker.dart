import 'package:flutter/material.dart';

categoryMaker() {
  return Container(
    margin: const EdgeInsets.only(right: 12),
    height: 182,
    width: 160,

    // padding: const EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: const Color(0xFFD1D2CD),
    ),

    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 4,
          ),
          child: Container(
            height: 120,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    image: AssetImage('assets/gaming.jpg'), fit: BoxFit.fill)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Gaming',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '59 items',
          style: TextStyle(color: Colors.grey[700]),
        )
      ],
    ),
  );
}
