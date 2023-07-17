import 'package:ecommerce_gadgets/presentation/widgets/ytproducts_tile.dart';
import 'package:flutter/material.dart';

class YoutubersPage extends StatelessWidget {
  const YoutubersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
