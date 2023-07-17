import 'package:ecommerce_gadgets/presentation/widgets/long_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/cart_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cart Page',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    ' 5 items',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  child: ListView.builder(
                itemBuilder: (context, index) => cartTile(),
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              )),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Text(
                  'Total: \$ 2000',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              LongButton(
                onPressed: () {},
                text: 'Proceed to checkout',
                color: const Color(0xffCED55B),
              )
            ],
          ),
        ),
      ),
    );
  }
}
