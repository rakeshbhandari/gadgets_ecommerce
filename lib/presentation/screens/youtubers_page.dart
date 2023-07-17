import 'package:ecommerce_gadgets/presentation/widgets/ytproducts_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YoutubersPage extends StatelessWidget {
  const YoutubersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.black,
          onPressed: () {
            Get.toNamed('homepage');
          },
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // padding: const EdgeInsets.all(8.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(6)),
                height: 100,
                margin: const EdgeInsets.all(1.0),
                child: const TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'What are you looking for? ',
                )),
              ),
              const Text(
                'Youtuber Workspaces',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const Text(
                '16 suggested items ',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return productTile();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
