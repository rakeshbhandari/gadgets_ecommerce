import 'package:ecommerce_gadgets/presentation/widgets/category_maker.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Explore ',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: const Icon(Icons.search_outlined), onPressed: () {}),
          IconButton(onPressed: () {}, icon: const Icon(Icons.save_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: 310,
                // color: Colors.orange,
                child: Stack(children: <Widget>[
                  const Text(
                    'Popular now',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 0, top: 49),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black),
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
                                  backgroundColor: const Color(0xFFCED55B),
                                ),
                                child: const Text(
                                  'View Details',
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                    Icons.shopping_cart_checkout_rounded),
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
                          child:
                              Image.asset('assets/chair.png', fit: BoxFit.cover
                                  // height: 400,
                                  // width: 300,
                                  ),
                        ),
                      )),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text(
                            'See More',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 180,
                  child: ListView.builder(
                    itemBuilder: (context, index) => categoryMaker(),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  )),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New Arrivals',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text(
                            'See More',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 10,
                child: Container(
                  height: 182,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.solid)),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/car.png')),
                            color: const Color(0xffDDDDDB)),
                      ),
                      const Column(
                        children: [
                          Text(
                            'Bat Automobile 2023 edition',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Alfred Inventory'),
                          Text('\$3500'),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
