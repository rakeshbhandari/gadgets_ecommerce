import 'package:ecommerce_gadgets/presentation/widgets/long_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffF4F5F7),
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Get.toNamed('homepage');
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        elevation: 0,
        // backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 325,
            // width: 425,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/chair.png'),
                ),
                color: Color(0xffF4F5F7)),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hughlan Ergonomic \nAdjustable Office Chair',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Hughlan Workspaces . 1.2k views',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                    )
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  padding: const EdgeInsets.all(14),
                  height: 74,
                  width: 79,
                  decoration: const BoxDecoration(
                    color: Color(0xffF4F5F7),
                  ),
                  child: const Text('\$ 120 \n10% off'),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 10),
            child: Text(
              'Hughlan ergonomic chair adopts an ergonomic design.This ergonomic desk chair can help you ease fatigue, reduce occupational disesase and let you develop good sitting posture habits.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: LongButton(
              onPressed: () {},
              text: 'Add to cart',
              color: const Color(0xffCED55B),
            ),
          )
        ],
      ),
    );
  }
}
